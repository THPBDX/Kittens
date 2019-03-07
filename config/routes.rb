Rails.application.routes.draw do
  get 'kittens/index'
  root "kittens#index"
  devise_for :users
  resources :home
  resources :kittens
  resources :charges
end
