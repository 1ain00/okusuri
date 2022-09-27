Rails.application.routes.draw do
  get 'medicines/index'
  root to: 'medicines#index'
  resources :medicines
end
