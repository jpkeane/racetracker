# == Route Map
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#            user_password PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
#                          POST   /users/password(.:format)         devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#        user_registration PATCH  /users(.:format)                  devise/registrations#update
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#                          POST   /users(.:format)                  devise/registrations#create
#                     root GET    /                                 front_pages#home
#        manager_dashboard GET    /manager/dashboard(.:format)      manager/dashboards#index
#       manager_promotions GET    /manager/promotions(.:format)     manager/promotions#index
#        manager_promotion GET    /manager/promotions/:id(.:format) manager/promotions#show
#           manager_tracks GET    /manager/tracks(.:format)         manager/tracks#index
#            manager_track GET    /manager/tracks/:id(.:format)     manager/tracks#show
#         manager_fixtures GET    /manager/fixtures(.:format)       manager/fixtures#index
#          manager_fixture GET    /manager/fixtures/:id(.:format)   manager/fixtures#show
#         manager_formulas GET    /manager/formulas(.:format)       manager/formulas#index
#          manager_formula GET    /manager/formulas/:id(.:format)   manager/formulas#show

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
