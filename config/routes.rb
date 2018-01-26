Rails.application.routes.draw do
  devise_for :accounts
  root to: 'home#index'

  # high_voltage
  get '*id' => 'pages#show', as: 'front_page'
end
