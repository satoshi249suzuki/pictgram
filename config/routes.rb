Rails.application.routes.draw do
  get 'sessions/new'
  
  root 'pages#index'
  get 'pages/help'
  

  get    '/login', to:  'sessions#new'
  post   '/login', to:  'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :topics
  resources :comments
  # resources :favorites
  get  'favorites/index'
  post "favorites/:topic_id/create",  to: "favorites#create"
  post "favorites/:topic_id/destroy",  to: "favorites#destroy"
  

  
  # get 'favorites/index'
  # post '/favorites', to: 'favorites#create'
  
  
  
  # get 'comments/new'
  # post 'comments', to: 'comments#create'
  
  get 'information' => 'pages#info'
  
end 








