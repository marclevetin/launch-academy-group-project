Rails.application.routes.draw do
  devise_for :reg_users
  resources :users, only: [:create, :index, :new, :show] do
    resources :reviews
  end

  resources :reg_users, only: [:index, :show]

  root 'static_pages#index'
end
