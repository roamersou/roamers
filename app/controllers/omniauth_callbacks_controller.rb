class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @account = Account.from_omniauth(request.env["omniauth.auth"])
    binding.pry
    if @account.persisted?
      sign_in_and_redirect @account, event: :authentication #this will throw if @account is not activated
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to pay_forwards_path
  end
end
