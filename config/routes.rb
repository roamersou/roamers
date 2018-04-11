Rails.application.routes.draw do

  get "/" => "home#index"
  # get "signup" => "users#new"
  resources :users
  # resources :accounts
  resources :pay_forwards
  resources :events
  
  # devise_for :accounts, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  # high_voltage
  get '*id' => 'pages#show', as: 'front_page'
end
