Rails.application.routes.draw do
  get '/maps/show/:id', to: "maps#show"
  get "/types/loadTypesFromCsv", to: "types#loadTypesFromCsv"
  get "/attractives/loadAttractivesFromCsv", to: "attractives#loadAttractivesFromCsv"

  get "/attractives/showByTypeId/:id", to: "attractives#showByTypeId"

  resources :attractives
  resources :types

  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
