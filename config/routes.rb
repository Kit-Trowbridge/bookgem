Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"  # Keep this as landing page

  get 'dashboard', to: 'dashboard#index'

  resources :books, only: [:index, :show, :new, :create] do
    resources :loans, only: [:new, :create, :index]
  end
  resources :loans, only: [:index, :edit, :update]
end