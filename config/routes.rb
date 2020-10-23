Rails.application.routes.draw do
  get 'item_listings/index'
  get 'item_listings/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :dashboards, only: [:index]
  end

  # resources :item_listings, except: [:destroy]
  
  resources :item_listings do
    resources :stores
  end

end
