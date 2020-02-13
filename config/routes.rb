Rails.application.routes.draw do

  get 'dynamic_pages/welcome'
  get 'welcome/:id', to: 'dynamic_pages#welcome', as: 'welcome'
  get 'static_pages/contact'
  get 'static_pages/team'
  get 'home', to: 'static_pages#home'

  resources :potins
  resources :users
  resources :comments, only: [:create]
end
