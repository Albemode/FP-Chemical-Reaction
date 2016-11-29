Rails.application.routes.draw do
  resources :ethers
  resources :amphetamines
  resources :senses
  resources :trusts
  resources :angers
  resources :anticipations
  resources :surprises
  resources :confusions
  resources :envies
  resources :saddnesses
  resources :patiences
  resources :joys
  resources :respects
  resources :hopes
  resources :hopens
  resources :pains
  resources :emotions
  resources :drugs
  resources :butylones
  resources :alcohols



  root 'drugs#index', as: "home_page"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
