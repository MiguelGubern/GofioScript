Rails.application.routes.draw do
  get "/types/loadTypesFromCsv", to: "types#loadTypesFromCsv"
  get "/attractives/loadAttractivesFromCsv", to: "attractives#loadAttractivesFromCsv"
  resources :attractives
  resources :types

  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
