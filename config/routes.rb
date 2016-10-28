Rails.application.routes.draw do
  root 'days#new'
  resources :days do
    resources :feedings, :except => [:update, :destroy]
    resources :pumps, :except => [:update, :destroy]
    resources :diapers, :except => [:update, :destroy]
  end
  resources :feedings, :only => [:update, :destroy]
  resources :pumps, :only => [:update, :destroy]
  resources :diapers, :only => [:update, :destroy]
end
