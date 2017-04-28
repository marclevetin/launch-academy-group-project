Rails.application.routes.draw do
  devise_for :reg_users
  resources :reg_users, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :edit]
    resources :omelettes, only: [:create, :new, :destroy]
  end
  resources :omelettes, only: [:index, :show]

  root 'static_pages#index'

  namespace :api do
    namespace :v1 do
      resources :omelettes, only: [:index, :show]
    end
  end

end
