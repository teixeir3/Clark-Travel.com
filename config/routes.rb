ClarkTravel::Application.routes.draw do
  resource :session, only: [:create, :destroy, :new]
  resources :users
  resources :promotions
  root to: "promotions#index"
end
