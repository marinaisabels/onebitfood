Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    resources :categories, only: [:index]
    resources :restaurants, only: [:index, :show]
    resources :orders, only: [:create, :show]
    resources :avaible_cities, only: [:index]
  end
end
