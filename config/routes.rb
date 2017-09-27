# == Route Map
#
#     Prefix Verb URI Pattern               Controller#Action
#       root GET  /                         front_pages#home
# promotions GET  /promotions(.:format)     promotions#index
#  promotion GET  /promotions/:id(.:format) promotions#show
#     tracks GET  /tracks(.:format)         tracks#index
#      track GET  /tracks/:id(.:format)     tracks#show

Rails.application.routes.draw do
  root 'front_pages#home'

  resources :promotions, only: %i[index show]
  resources :tracks, only: %i[index show]
  resources :fixtures, only: %i[index show]
end
