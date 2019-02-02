Rails.application.routes.draw do
  get "/types/loadTypesFromCsv", to: "types#loadTypesFromCsv"
  get "/attractives/loadAttractivesFromCsv", to: "attractives#loadAttractivesFromCsv"
  resources :attractives
  resources :types
end
