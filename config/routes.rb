Rails.application.routes.draw do
  devise_for :users
  root to: 'recipes#index'
  resources :users, only: [:new, :create, :edit, :update]
  resources :recipes do
    resources :questions
  end
end

