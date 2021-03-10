Rails.application.routes.draw do
  get 'participants/new'
  get 'participants/create'
  get 'participants/destroy'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  get 'rides/index'
  get 'rides/show'
  get 'rides/new'
  get 'rides/create'
  get 'rides/edit'
  get 'rides/update'
  get 'rides/destroy'
  devise_for :users
  root to: 'pages#home'
    resources :rides, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
