Rails.application.routes.draw do
  devise_for :reg_users
  resources :reg_users, only: [:index, :show] do
    resources :reviews
    resources :omelettes
  end

  root 'static_pages#index'
end
