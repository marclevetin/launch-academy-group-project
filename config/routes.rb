Rails.application.routes.draw do
  devise_for :reg_users
  resources :reg_users, only: [:index, :show] do
    resources :reviews, only: [:index, :new, :create, :show, :edit]
    resources :omelettes, only: [:create, :index, :new, :show, :destroy]
  end

  root 'static_pages#index'
end
