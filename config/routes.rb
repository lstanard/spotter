Rails.application.routes.draw do

  root :to => "users#show"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :users
  resources :sessions
  resources :workouts

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'users/create'
  get 'users/update'
  get 'users/edit'
  get 'users/destroy'
  get 'users/index'
  get 'users/show'

end
