Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "restaurants/:restaurant_id/reviews", to: "reviews#index"
  resources :restaurants, except: [:destroy, :update] do
    resources :reviews, only: [:new, :create, :show, :destroy, :edit, :update]
  end


end
