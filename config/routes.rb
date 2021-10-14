Rails.application.routes.draw do

  root 'homes#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  namespace :admins do
    resource :managements
  end

  resource :mypages
  resources :managements
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
