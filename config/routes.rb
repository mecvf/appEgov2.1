Rails.application.routes.draw do
  resources :bebidas
  resources :franjas
  resources :productos
  resources :tipos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tipos#index'
end
