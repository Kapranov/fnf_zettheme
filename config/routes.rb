Rails.application.routes.draw do

  resources :companies
  resources :things
  resources :foods
  resources :categories
  # get 'order_items/create'
  # get 'order_items/update'
  # get 'order_items/destroy'
  # get 'carts/show'
  # get 'products/index'
  # get 'products/minor'
  get 'home/index'
  get 'home/minor'
  get 'statistics/statatic'
  get 'landing/index'

  get "dashboards/index"
  get "dashboards/dashboard_1"
  get "dashboards/dashboard_2"
  get "dashboards/dashboard_3"
  get "dashboards/dashboard_4"
  get "dashboards/dashboard_4_1"

  # match 'dashboards' => 'dashboards/index'
  # match 'hello_world' => 'dashboards#index'
  match 'dashboard', to: 'dashboards#index', via: [:get]

  mount Upmin::Engine => '/admin'

  devise_for :users

  resources :users
  # resources :products, only: [:index]
  resources :products
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  # root to: "products#index"
  # root to: 'visitors#index'
  # root to: 'companies#index'
  root to: 'landing#index'
end
