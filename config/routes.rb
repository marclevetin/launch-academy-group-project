Rails.application.routes.draw do
  root 'static_pages#index'

  resources :users, only: [:create, :index, :new, :show] do
    resources :reviews, only: [:index]
  end

  resources :omelettes, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
  end
end
