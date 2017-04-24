Rails.application.routes.draw do
  devise_for :reg_users
  resources :reg_users, only: [:index, :show] do
    resources :reviews
  end

  root 'static_pages#index'

  namespace :api do
    namespace :v1 do
      resources :omelettes
    end
  end
  
end
