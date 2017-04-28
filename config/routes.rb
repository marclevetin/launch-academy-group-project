Rails.application.routes.draw do
  devise_for :reg_users

  resources :reg_users, only: [:index, :show]

  resources :omelettes, only: [:index, :show, :create, :new, :destroy] do
    resources :reviews, only: [:new, :create, :edit, :update]
  end

  root 'static_pages#index'

  namespace :api do
    namespace :v1 do

    end
  end

end
