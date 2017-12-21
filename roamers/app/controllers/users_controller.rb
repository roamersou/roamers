class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end
  
  def login
  end
end
