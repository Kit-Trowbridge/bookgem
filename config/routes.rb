Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/create'
  root to: "pages#home"
  resources :books, only: [:index, :show, :new, :create] do
    resources :loans, only: [:new, :create]
  end
  resources :loans, only: [:index]
end
