Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/create'
  # get 'users/show'
  # get 'users/update'
  # get 'users/new'

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
