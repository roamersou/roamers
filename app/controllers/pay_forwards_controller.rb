class PayForwardsController < ApplicationController
  before_action :set_pay_forward, only: %i[show]

  def index
    @pay_forwards = PayForward.all
  end

  def show
    @pay_forward = PayForward.find(params[:id])
    # @image_file_obj = params[:pay_forward][:image_name]
    # params[:pay_forward][:image_name] = @image_file_obj.original_filename
  end

  def new
    @pay_forward = PayForward.new
  end

  def create
    @pay_forward = PayForward.new(pay_forward_params)
    @pay_forward.image_name = "default.jpg"
    if @pay_forward.save
      redirect_to @pay_forward, notice: 'pay_forward was successfully created.'
    else
      render :new
    end
    
  end

  def edit
    @pay_forward = PayForward.find(params[:id])
  end

  def update
    @pay_forward = PayForward.find(params[:id])
    @pay_forward.title = params[:title]
    @pay_forward.body = params[:body]
    @pay_forward.date = params[:date]
    @pay_forward.place = params[:place]
    if @pay_forward.save
      redirect_to @pay_forward, notice: 'pay_forward was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_pay_forward
    @musubi = PayForward.find(params[:id])
  end


  # createアクションのpay_forward_paramsに入る
  def pay_forward_params
    params.require(:pay_forward).permit(:title, :body, :date, :place, :image_name)
  end

end
