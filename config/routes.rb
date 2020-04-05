Rails.application.routes.draw do
  devise_for :users
  resources :books do 
    resources :reviews
  end
  
  resources :messages do 
    resources :comments
  end
  root "books#index"
end
