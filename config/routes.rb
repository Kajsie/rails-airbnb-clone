Rails.application.routes.draw do
  devise_for :users do
    resources :bookings, only: [:new, :create, :index]
  end
  resources :hairdressers, only: [:index]
  root to: 'pages#home'
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
