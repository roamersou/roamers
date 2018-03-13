class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find_by(id: params[:id])
  end


end
