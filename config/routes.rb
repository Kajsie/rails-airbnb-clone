Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :bookings, only: [:new, :create, :index, :destroy]

  resources :hairdressers, only: [:index, :show] do
    collection do
      get :search
    end
    resources :availabilities, only: [:new, :create]
  end

end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
