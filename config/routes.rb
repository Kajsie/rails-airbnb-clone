Rails.application.routes.draw do
  get 'index', to: 'bookings#index'

  get 'new', to: 'bookings#new'

  post 'create', to: 'bookings#create'


  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
