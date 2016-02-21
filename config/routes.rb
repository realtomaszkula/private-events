Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :show]
  resources :events, only: [:index, :new, :create, :show]
  root 'events#index'
end
