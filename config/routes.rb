Rails.application.routes.draw do
  root 'days#new'
  resources :days do
    resources :feedings, :except => [:update, :destroy]
    resources :pumps, :except => [:update, :destroy]
    resources :diapers, :except => [:update, :destroy]
    resources :sleeps, :except => [:update, :destroy]
    resources :tummy_times, :except => [:update, :destroy]
    resources :baths, :except => [:update, :destroy]
  end
  resources :feedings, :only => [:update, :destroy]
  resources :pumps, :only => [:update, :destroy]
  resources :diapers, :only => [:update, :destroy]
  resources :sleeps, :only => [:update, :destroy]
  resources :tummy_times, :only => [:update, :destroy]
  resources :baths, :only => [:update, :destroy]
end
