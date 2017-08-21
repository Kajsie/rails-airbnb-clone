Rails.application.routes.draw do
    root to: 'pages#home'
  devise_for :users
  resources :bookings, only: [:new, :create, :index]

  resources :hairdressers, only: [:index]

end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
