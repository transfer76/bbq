Rails.application.routes.draw do
  root "event#index"

  resources :events
  resources :users, only: [:show, :edit, :update]
end
