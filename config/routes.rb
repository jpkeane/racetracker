Rails.application.routes.draw do
  root 'front_pages#home'

  resources :promotions, only: %i[index show]
end
