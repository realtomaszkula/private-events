Rails.application.routes.draw do
  get 'sessions/new'

  resources :users, only: [:index, :new, :create, :show]
  resources :events, only: [:index, :new, :create, :show]
  resources :sessions, only: [:new]
  get 'login'   => 'sessions#new'
  get 'logout'  => 'sessions#destroy'
  root 'events#index'
end
