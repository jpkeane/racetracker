# == Route Map
#
#     Prefix Verb URI Pattern               Controller#Action
#       root GET  /                         front_pages#home
# promotions GET  /promotions(.:format)     promotions#index
#  promotion GET  /promotions/:id(.:format) promotions#show

Rails.application.routes.draw do
  root 'front_pages#home'

  resources :promotions, only: %i[index show]
  resources :tracks, only: %i[index show]
end
