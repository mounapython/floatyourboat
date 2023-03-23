Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  resources :bookings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  get "pages", to: "pages#home"

  resources :boats, only: [:index]
end
