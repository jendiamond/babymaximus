Rails.application.routes.draw do
  root 'days#new'
  resources :days do
    resources :feedings, :except => [:update, :destroy]
  end
  resources :feedings, :only => [:update, :destroy]
end
