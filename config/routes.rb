Rails.application.routes.draw do
  resources :news
  root 'pages#home'
  

  resources :comments, only: [:create]

  # get 'news/index'
  devise_for :users, controllers: { sessions: 'sessions' }

  
  # get '/users/sign_out', to: 'sessions#destroy'

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
