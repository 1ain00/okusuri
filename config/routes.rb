Rails.application.routes.draw do
  devise_for :users
  get 'medicines/index'
  root to: 'medicines#index'
  resources :medicines 
  resources :users, only: :show
  resources :medicinelists 
end

