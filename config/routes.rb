Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/create'
  root to: "pages#home"
<<<<<<< HEAD
  resources :books, only: [:index, :show]  # Books at /books
  resources :loans, only: [:index, :new, :create]  # Loans at /loans
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
=======
  resources :books, only: [:index, :show, :new, :create] do
    resources :loans, only: [:new, :create]
  end
  resources :loans, only: [:index]
>>>>>>> origin/master
end
