Rails.application.routes.draw do
  resources :menus
  get 'welcome/index'

  resources :bebidas
  resources :franjas
  resources :productos
  resources :tipos
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
