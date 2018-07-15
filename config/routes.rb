Rails.application.routes.draw do
  get 'questionnaires/index'
  get 'questionnaires/new'
  get 'questionnaires/create'
  get 'questionnaires/edit'
  get 'questionnaires/update'
  get 'questionnaires/destroy'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/destroy'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
