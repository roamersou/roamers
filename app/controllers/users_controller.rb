class UsersController < ApplicationController

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
    @user = User.find_by(id: params[:id])
  end 

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    @user.name = params[:name]
    @user.self_intro = params[:self_intro]
    @user.tw_account = params[:tw_account]
    @user.fb_account = params[:fb_account]
    @user.insta_account = params[:insta_account]
    if @user.save
      redirect_to @user
      flash[:notice] = "ユーザー情報を編集しました！"
    else
      render :edit
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :self_intro, :fb_account, :tw_account, :insta_account)
  end

end
