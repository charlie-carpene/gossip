Rails.application.routes.draw do

  get 'static_pages/new_potin'
  get 'user/:user', to: 'dynamic_pages#user', as: 'user'
  get 'show_potin/:id',  to: 'dynamic_pages#show_potin', as: 'potin'
  get 'dynamic_pages/welcome'
  get 'welcome/:id', to: 'dynamic_pages#welcome', as: 'welcome'
  get 'static_pages/contact'
  get 'static_pages/team'
  get 'home', to: 'static_pages#home'

  resources :potins, only: [:new, :create]
end
