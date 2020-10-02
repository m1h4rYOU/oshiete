Rails.application.routes.draw do
  # get 'recipes/index'
  devise_for :users
  root to: 'recipes#index'
  resources :users, only: [:new, :create, :edit, :update]
  resources :recipes

end
