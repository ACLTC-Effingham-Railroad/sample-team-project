Rails.application.routes.draw do
  get '/capstones' => 'capstones#index'

  get '/capstones/:id' => 'capstones#show'

  get '/' => 'pages#index'

  get '/pages/:id' => 'pages#show'

 end
