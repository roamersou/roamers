Rails.application.routes.draw do

  get '*id' => 'pages#show', as: 'front_page'  
end
