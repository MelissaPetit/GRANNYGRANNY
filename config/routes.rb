Rails.application.routes.draw do
  devise_for :users

  resources :offers, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # resources :offers, only: [:index]
  get '/uikit', to: 'pages#uikit'

  # user story d'une grand-mère:
  namespace :grandma do
    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end

# melissa va rajouter :
# uikit.html.erb
# Get ‘uikit’, to: ‘pages’#uikit'
# localhost:3000/uikit
# Bien créer la méthode uikit dans PagesController
