Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "welcome#index"
  get "about", to: "about#index"
  get "tasks", to: "tasks#index"

  namespace :dashboard do
    root to: "home#index"
    get "my_tasks",  to: "my_tasks#index"
    get "inbox",     to: "inbox#index"
    get "today",     to: "today#index"
    get "upcoming",  to: "upcoming#index"
    get "teams",     to: "teams#index"
    get "calendar",  to: "calendar#index"
    get "reports",   to: "reports#index"
    get "settings",  to: "settings#index"
    resources :projects
  end

  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
