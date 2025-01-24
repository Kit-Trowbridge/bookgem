Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :books, only: [:index, :show, :new, :create] do
    resources :loans, only: [:new, :create, :index]
  end
  resources :loans, only: [:index, :edit, :update]
end
