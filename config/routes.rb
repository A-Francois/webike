Rails.application.routes.draw do
  resources :rides do
    resources :participants, only: [:new, :create, :update]
  end

  resources :participants, only: [:new, :destroy] do
    resources :hotels, only: [:index]
      resources :bookings, only: [:create]
  end

  resources :hotels, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :show, :edit, :update, :destroy, :new, :create]

  # create a profile route instead of user

  devise_for :users
  resources :rides, only: [:destroy]
  root to: 'pages#home'
    resources :rides, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
