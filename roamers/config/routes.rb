Rails.application.routes.draw do
  # コールバック用URL
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  get "login" => "users#login"

  get "users/signup" => "users#new"

  get "users/index" => "users#index"
  get "users/:id" => "users#show"

  
  get "posts/index" => "posts#index"

  get "/" => "home#top"
  get "about" => "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
