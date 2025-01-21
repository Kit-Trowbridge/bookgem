Rails.application.routes.draw do
  root to: "pages#home"
  resources :books, only: [:index, :show, :new, :create] do
    resources :loans, only: [:new, :create]
  end
  resources :loans, only: [:index]
end
