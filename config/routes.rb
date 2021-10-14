Rails.application.routes.draw do
  resources :stories
  resources :users, only: [:new, :create, :show]
  root 'stories#index'
  post 'users/destroy_session', as:'destroy_session'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
