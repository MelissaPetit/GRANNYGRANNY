Rails.application.routes.draw do
  devise_for :users

  # user story d'un utilisateur lambda (futur grand-mère ou futur client):
  authenticate :user do
    resources :users, only: [:edit, :update] do
      resources :offers, only: [:index, :new, :create] do
        resources :bookings, only: [:new, :create]
      end
    end
  end

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # 'visitor' story d'un visiteur:
  resources :offers, only: [:index, :show]

  # user story d'une grand-mère:
  namespace :grandma do
    resources :offers, only: [:new, :create] do
      resources :bookings, only: [:new, :create]
    end
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
