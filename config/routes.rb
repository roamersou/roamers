Rails.application.routes.draw do

  root to: 'home#index'

  # high_voltage
  get '*id' => 'pages#show', as: 'front_page'  
end
