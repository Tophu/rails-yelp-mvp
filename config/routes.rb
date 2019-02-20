Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create] do
    # resources of Restaurants using only index, new & create
    resources :reviews, only: [:new, :create]
    # nested resource of reviews inside of restaurants
    # like 1:N - A restaurant have many reviews, but a review belongs to 1 restaurant
  end
end
