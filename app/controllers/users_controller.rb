class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "ユーザー登録が完了しました！"
      redirect_to("/users/#{@user.id}")
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end 

  def update
    
    @user = User.find(params[:id])
    # binding.pry
    @user.update_attributes(user_params)
    if @user.save      
      redirect_to @user, notice: "ユーザー情報を編集しました！"
    else
      render :edit
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :self_intro, :fb_account, :tw_account, :insta_account)
  end

  #beforeアクション

  #ログイン済みユーザーかどうか確認
  def logged_in_user
    unless logged_in?
      flash[:danger] = "ログインしてください"
      redirect_to login_url
    end
  end

  # 正しいユーザーかどうか確認
  def correct_user
    @user = User.find(params[:id])
    redirect_to(@user) unless current_user?(@user)
  end
end
