Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  devise_for :users
  resources :bookings, only: [:new, :create, :index]

  resources :hairdressers, only: [:index, :show] do
    collection do
      get :search
    end
    resources :availabilities, only: [:new, :create]
  end

end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
