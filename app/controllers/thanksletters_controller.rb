class ThankslettersController < ApplicationController
    before_action :logged_in_user, only: [:new, :create, :destroy]

    def new
        @thanksletter = Thanksletter.new
    end

    def create
        @thanksletter = current_user.thanksletters.build(thanksletter_params)
        if @thanksletter.save
            flash[:success] = "サンクスレターを作成しました！"
            redirect_to user_url
        else
            render user_url
        end
    end

    def destroy
    end

    private

    def thanksletter_params
        params.require(:thanksletter).permit(:content)
    end
end
