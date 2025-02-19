Rails.application.routes.draw do
  resources :stateinformations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  
  get 'login', to:'home#login', as:'login'
  get 'populateinfo', to:'api#populateinfo', as:'populateinfo'
  get 'getInformationForState', to:'api#getInformationForState', as:'getInformationForState'
  get 'getCitiesForState', to:'api#getCitiesForState', as:'getCitiesForState'
  get 'getNeighborhoodsForCity', to:'api#getNeighborhoodsForCity', as:'getNeighborhoodsForCity'
end
