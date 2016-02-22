Rails.application.routes.draw do
  get 'sessions/new'

  resources :users, only: [:new, :create]
  resources :events, only: [:index, :new, :create, :show]
  resources :sessions, only: [:new]
  get 'signup'        => 'users#new'
  get 'login'         => 'sessions#new'
  post 'login'        => 'sessions#create'
  delete 'logout'     => 'sessions#destroy'
  root 'events#index'
end
