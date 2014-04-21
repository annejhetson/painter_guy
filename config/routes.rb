PainterGuy::Application.routes.draw do
  devise_for :users
  devise_for :admins
  root to: 'jobs#index'

  resources :users do
  	resources :bookings, :only => :show
  	resources :profiles
  	resources :jobs
  end
  resources :bookings, :except => :show 
  get '/contacts', to: 'bookings#contact'
  post '/contacts', to: 'bookings#comment'
  get '/addjob', to: 'users#index', via: "get"

end
