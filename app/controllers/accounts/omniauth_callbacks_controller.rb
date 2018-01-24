class Accounts::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    callback_from :facebook
  end

  private

  def callback_from(provider)
    provider = provider.to_s

    @account = Account.find_for_oauth(request.env['omniauth.auth'])

    if @account.persisted?
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      sign_in_and_redirect @account, event: :authentication
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_account_registration_url
    end
  end
end
