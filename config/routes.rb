Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "controller#action"
  namespace :admin do
    resources :restaurants, only: [:index, :update, :delete]
  end
  resources :restaurants do
    #get "restaurants/:restaurant_id/reviews", to: "reviews#index"
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
