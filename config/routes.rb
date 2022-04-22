Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/report'
  get 'orders/new'
  get 'orders/edit'
  resources :items
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
