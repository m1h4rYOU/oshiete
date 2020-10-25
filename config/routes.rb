Rails.application.routes.draw do
  devise_for :users, :controllers => {
    registrations: 'users/registrations',
    sessions: 'users/sessions'   
  }
  root to: 'recipes#index'
  resources :users, only: [:new, :create, :edit, :update]
<<<<<<< Updated upstream
  resources :recipes
  resources :questions

=======
  resources :recipes do
    resources :questions
  end
  post '/recipes/guest_sign_in', to: 'recipes#new_guest'
>>>>>>> Stashed changes
end

devise_scope :user do
  post 'users/guest_sign_in', to: 'users/sessions#new_guest'
end