PainterGuy::Application.routes.draw do
  devise_for :users
  devise_for :admins
  root to: 'jobs#index'

  resources :bookings
  get '/contacts', to: 'bookings#contact'
  post '/contacts', to: 'bookings#comment'

end
