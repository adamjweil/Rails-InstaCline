Rails.application.routes.draw do


  #users
  get '/users/new' =>'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  #login sessions
  get '/sessions/new' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#delete'

  #photo
  get '/photos/:id' => 'photos#show'
  post '/photos' =>'photos#create'
  get '/photos' => 'photos#index'
  get '/adamjweil' => 'photos#user_photos'

  get '/profile' => 'static#profile'
  get '/home' => 'static#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#index'
end
