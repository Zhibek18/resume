Rails.application.routes.draw do

  get "/signup", to: "users#new" 
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/resume", to: "user_informs#new"
  root 'pages#index'
  resources :users
  resources :user_informs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
