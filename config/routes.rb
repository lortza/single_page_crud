Rails.application.routes.draw do
  root 'critters#index'
  resources :critters
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
