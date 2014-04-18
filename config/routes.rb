PainterGuy::Application.routes.draw do
  devise_for :users
  devise_for :admins
  root to: 'jobs#index'
  get '/contacts', to: 'users#contact'
end
