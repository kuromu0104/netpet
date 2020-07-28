Rails.application.routes.draw do
  get 'users/show'
  resources :users, only: [:show]
  devise_for :users, controllers: {
             registrations: 'users/registrations',
             sessions:      'users/sessions'
  }

  root to: 'pets#index'

  resources :pets

end
