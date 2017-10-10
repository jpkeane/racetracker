# == Route Map
#
#     Prefix Verb URI Pattern               Controller#Action
#       root GET  /                         front_pages#home
# promotions GET  /promotions(.:format)     promotions#index
#  promotion GET  /promotions/:id(.:format) promotions#show
#     tracks GET  /tracks(.:format)         tracks#index
#      track GET  /tracks/:id(.:format)     tracks#show
#   fixtures GET  /fixtures(.:format)       fixtures#index
#    fixture GET  /fixtures/:id(.:format)   fixtures#show
#   formulas GET  /formulas(.:format)       formulas#index
#    formula GET  /formulas/:id(.:format)   formulas#show

Rails.application.routes.draw do
  devise_for :users

  root 'front_pages#home'

  namespace :manager do
    get 'dashboard', to: 'dashboards#index'

    resources :promotions, only: %i[index show]
    resources :tracks, only: %i[index show]
    resources :fixtures, only: %i[index show]
    resources :formulas, only: %i[index show]
  end
end
