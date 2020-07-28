Rails.application.routes.draw do

  devise_for :users, controllers: {
             registrations: 'users/registrations',
             sessions:      'users/sessions'
  }
  
  resources :users, only: [:show]
  resources :pets
  root to: 'pets#index'
  get 'users/show'

end
