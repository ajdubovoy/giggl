Rails.application.routes.draw do
  devise_for :users # Devise views auto generated
  root to: 'pages#home' # Landing page
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Account
  get '/account', to: 'account#index', as: 'account'

  # Bands
  resources :bands, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :show, :new, :create]
    resources :gigs, only: :create # polymorphic
  end

  # Bookings
  resources :bookings, only: [:index, :show]

  # Gigs
  resources :gigs, only: [:index, :show, :new] do
    resources :bookings, only: :create
  end

  # Search
  get '/search', to: 'search#index', as: 'search'

  # Venues
  resources :venues, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :show, :new, :create]
    resources :gigs, only: :create # polymorphic
  end

end
