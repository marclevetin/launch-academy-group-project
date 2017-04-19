Rails.application.routes.draw do
  resources :users, only: [:create, :index, :new, :show] do
    resources :reviews
  end

  root 'static_pages#index'
end
