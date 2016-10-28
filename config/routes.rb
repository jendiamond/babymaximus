Rails.application.routes.draw do
  resources :pumps
  root 'days#new'
  resources :days do
    resources :feedings, :except => [:update, :destroy]
  end
  resources :feedings, :only => [:update, :destroy]
end
