Rails.application.routes.draw do
  resources :tv_shows
  resources :subtitles
  resources :reviews
  resources :directors
  resources :actors
  resources :episodes do
      get :watch, on: :member
  end
  resources :seasons
  resources :articles
  # registrations para agregar nombre al registro de usuarios
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Admin Dashboard Index
  resources :administrators do
      get :list_users, on: :member
  end
end
