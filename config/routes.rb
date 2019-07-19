Rails.application.routes.draw do
  get 'stations/index'

  resources :rentals
      
end
