Rails.application.routes.draw do
  devise_for :admins
  
  root to: "tickets#index"

  namespace :admins do
    root to: "reservations#index"
  end
end
