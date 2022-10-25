Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root to: 'events#index'

  resources :events do
    resources :comments, only: [:create, :destroy]
  end
  
  resources :users, only: %i[show edit update]
end
