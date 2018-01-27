class PayForwardsController < ApplicationController
  before_action :set_pay_forward, only: %i[show]

  def index
    @pay_forwards = PayForward.all
  end

  def show
    @pay_forward = PayForward.find(params[:id])
  end

  def new
    @pay_forward = PayForward.new
  end

  def create
    @pay_forward = PayForward.new(pay_forward_params)
    if @pay_forward.save
      redirect_to @pay_forward, notice: 'pay_forward was successfully created.'
    else
      render :new
    end
  end

  private

  def set_pay_forward
    @musubi = PayForward.find(params[:id])
  end

  def pay_forward_params
    params.require(:pay_forward).permit(:title, :body)
  end
end
