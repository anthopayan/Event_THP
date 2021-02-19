Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :events
  resources :users do
    resources :avatars, only: [:create]
  end

  resources :events do
    resources :participations
  end

  namespace :admin do 
    resources :admin_users, :admin_events
  end

  resources :admin, only: [:index]
  
  root to: 'events#index'
 
end

