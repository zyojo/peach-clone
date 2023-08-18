Rails.application.routes.draw do
  devise_for :admins

  namespace :admins do
    resources :reservations, only: [:index]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "admins/reservations#index"

end
