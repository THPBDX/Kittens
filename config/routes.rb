Rails.application.routes.draw do
  root "kittens#index"
  devise_for :users
  resources :home
  resources :kittens
  resources :carts
  resources :orders
  resources :charges
end
