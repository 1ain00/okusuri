Rails.application.routes.draw do
  devise_for :users
  get 'medicines/index'
  root to: 'medicines#index'
  resources :medicines do
  resources :users, only: :show
end
end

