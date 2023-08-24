Rails.application.routes.draw do
  devise_for :admins
  
  root to: "tickets#index"

  get "admins", to: "admins/reservations#index", as: :admin_root
  
end
