Rails.application.routes.draw do
  devise_for :reg_users
  resources :users, only: [:create, :index, :new, :show] do
    resources :reviews
  end

  root 'static_pages#index'
end
