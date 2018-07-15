Rails.application.routes.draw do
  get 'questionnaires/index'
  get 'questionnaires/new'
  get 'questionnaires/create'
  get 'questionnaires/edit'
  get 'questionnaires/update'
  get 'questionnaires/destroy'

  get "/signup", to: "users#new" 
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  root 'pages#index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
