Rails.application.routes.draw do
  devise_for :reg_users
  resources :reg_users, only: [:index, :show] do
    resources :reviews, only: [:index, :new, :create, :show, :edit]
    resources :omelettes, only: [:create, :index, :new, :show, :destroy]
  end

  root 'static_pages#index'

  namespace :api do
    namespace :v1 do
<<<<<<< HEAD
      resources :omelettes
    end
  end
  
=======
      resources :omelettes, only: [:index]
    end
  end
>>>>>>> 61cb3ba0421174e04fe683582548632069031a40
end
