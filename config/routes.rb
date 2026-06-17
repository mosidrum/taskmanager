Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "welcome#index"
  get "about", to: "about#index"
  get "tasks", to: "tasks#index"

  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
