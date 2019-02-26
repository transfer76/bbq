Rails.application.routes.draw do
  root "event#index"

  resources :events
end
