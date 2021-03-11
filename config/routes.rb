Rails.application.routes.draw do
  resources :rides do
    resources :participants, only: [:new, :create]
  end

  resources :participants, only: [:destroy]

  resources :hotels, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show, :edit, :update, :destroy, :create]

  # create a profile route instead of user

  devise_for :users
  root to: 'pages#home'
    resources :rides, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
