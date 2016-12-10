Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:edit, :update]
  root 'prototypes#index'
  resources :popular, only: [:index]

  namespace :prototype do
    resources :newest, only: [:index]
  end

  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end


end
