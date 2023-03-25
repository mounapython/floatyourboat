Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  get "pages", to: "pages#home"
  get "myBookings", to: "bookings#my_bookings", as: "my_bookings"

  resources :boats, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
end
