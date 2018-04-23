Rails.application.routes.draw do
  root 'pages#home'
  
  get '/contact', to: 'pages#contact'
  post '/contact', to: 'pages#contact_email'

  devise_for :users
  get   '/profile',       to: 'profiles#show'
  post  '/profile',       to: 'profiles#create'
  get   '/profile/edit',  to: 'profiles#edit'
  patch '/profile',       to: 'profiles#update'
  
  resources :books
end