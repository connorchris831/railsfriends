Rails.application.routes.draw do
  get 'home/about'
  devise_for :users, path: 'auth', path_names: {sign_in: 'login', sign_out: "logout", sign_up: "register"}
  root "friends#index"
  resources :friends
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
