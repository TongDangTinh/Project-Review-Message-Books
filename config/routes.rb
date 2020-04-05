Rails.application.routes.draw do
  devise_for :users
  resources :books do 
    resources :reviews
  end
  resources :suggest_books do 
    resources :comments
  end
  root "books#index"
end
