Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :restaurants

resources :reviews

# delete "restaurants/:id", to: "restaurants#destroy"

root to: "restaurants#index"

end


