Rails.application.routes.draw do
  devise_for :users
  get "login" => "users#login"

  get "users/signup" => "users#new"

  get "users/index" => "users#index"
  get "users/:id" => "users#show"

  
  get "posts/index" => "posts#index"

  get "/" => "home#top"
  get "about" => "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
