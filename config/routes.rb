Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create]
  resources :events, only: [:index, :new, :create, :show]

end
