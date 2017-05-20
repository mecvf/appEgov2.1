Rails.application.routes.draw do
  get 'welcome/index'

  resources :bebidas
  resources :franjas
  resources :productos
  resources :tipos
  resources :welcome
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
