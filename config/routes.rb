Rails.application.routes.draw do
  devise_for :users
  root to: 'homepage#index'

  namespace :users do
    resources :posts, only: [:new, :create, :show]
  end
end
