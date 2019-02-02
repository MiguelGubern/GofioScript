Rails.application.routes.draw do

  get "/types/loadTypesFromCsv", to: "types#loadTypesFromCsv"
  get "/coffe_shops/loadCoffeShopsFromCsv", to: "coffe_shops#loadCoffeShopsFromCsv"
  get "/attractives/loadAttractivesFromCsv", to: "attractives#loadAttractivesFromCsv"

  get "/attractives/showByTypeId/:id", to: "attractives#showByTypeId"
  resources :coffe_shops
  resources :attractives
  resources :types

  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
