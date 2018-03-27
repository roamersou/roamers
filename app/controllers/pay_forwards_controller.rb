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
    image = params[:pay_forward][:image_name]
    if image
      # @pay_forward.image_name = "#{@pay_forward.id}.jpg"
      File.binwrite("public/user_images/user#{@pay_forward.id}.jpg", image.read)
    end
    
    if @pay_forward.save
      redirect_to @pay_forward, notice: 'pay_forward was successfully updated.'
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
    @pay_forward.date = params[:date]
    @pay_forward.place = params[:place]
    @pay_forward.body = params[:body]
    # @pay_forward.image_file  = params[:image_file]
    upload_file = params[:image_file]
    content = {}
    if @pay_forward.image_file != nil
       @pay_forward.image_file = upload_file.read
      @pay_forward.image_name = upload_file.original_filename
    end

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