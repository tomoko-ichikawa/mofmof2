Rails.application.routes.draw do
get 'rentals/index'

  resources :rentals
end
