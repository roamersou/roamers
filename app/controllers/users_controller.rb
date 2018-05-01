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

end
