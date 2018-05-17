class ThankslettersController < ApplicationController
    before_action :logged_in_user, only: [:new, :create, :destroy]

    def new
        @user_id = params[:user_id]
        @thanksletter = Thanksletter.new
    end

    def create
        @thanksletter = current_user.thanksletters.build(thanksletter_params.merge(receiver_id: params[:user_id]))
        if @thanksletter.save
            flash[:success] = "サンクスレターを作成しました！"
            redirect_to users_url
        else
            render "new"
        end
    end

    def destroy
    end

    private

    def thanksletter_params
        params.require(:thanksletter).permit(:content)
    end
end
