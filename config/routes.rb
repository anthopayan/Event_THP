Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :events
  resources :users
  #resources :participations

  resources :events do
    resources :participations

  end

  root to: 'events#index'
end
