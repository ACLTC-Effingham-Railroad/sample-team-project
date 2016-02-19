Rails.application.routes.draw do
  get 'capstones/index'

  get 'capstones/show'

  get '/' => 'pages#index'

  get '/pages/:id' => 'pages#show'

 end
