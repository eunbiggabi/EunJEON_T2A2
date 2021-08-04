Rails.application.routes.draw do
  resources :user_addresses
  resources :products
  devise_for :users, :controllers => { :userregistration => :userregistration }
  root to: "home#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
