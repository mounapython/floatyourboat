Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  get "pages", to: "pages#home"
  get "about", to: "pages#about",as: "about"

  get "myBookings", to: "bookings#my_bookings", as: "my_bookings"

  resources :boats, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :destroy]
    resources :reviews, only: [:new, :create]
  end
end
