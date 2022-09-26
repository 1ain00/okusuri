Rails.application.routes.draw do
  get 'medicines/index'
  root to: 'medicines#index'
  resources :blogs
end
