Rails.application.routes.draw do

  root to: 'home#index'

  devise_for :accounts, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  # high_voltage
  get '*id' => 'pages#show', as: 'front_page'
end
