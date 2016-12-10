Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:edit, :update]
  root 'prototypes#index'
  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  resources :tags, param: :tag_name, only: [:index, :show]

end
