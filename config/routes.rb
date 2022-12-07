Rails.application.routes.draw do
  devise_for :users
  
  get 'about', to: 'about#index'  

  get 'registrations', to: 'registrations#new'
  post '/registrations', to: 'registrations#create'

  # get 'sign_in', to: 'sessions#new'
  # post '/sign_in', to: 'sessions#create'

  # get 'page_new', to: 'pages#new'
  resources :pages, only: [:new]

  delete 'logout', to: 'sessions#destroy'

  #get 'book', to: 'books#new'
  #post '/book', to: 'books#create'
  #get 'books', to: 'books#index'
  #get 'edit_books', to: 'books#edit'
  #patch '/edit_books', to: 'books#update'
 
  
  namespace :user do
    resources :books
  end 
  root to: 'main#index'
end