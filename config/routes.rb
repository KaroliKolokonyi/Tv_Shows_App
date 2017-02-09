Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/", to: 'products#index'

  get "/products", to: 'products#index'
  get "/products/new", to: 'products#new'
  get "/products/:id",to: 'products#show'
  post "/products",to: 'products#create'

  get "/products/:id/edit", to: 'products#edit'
  patch "/products/:id", to: 'products#update'
  delete "/products/:id", to: 'products#destroy'

  get "/signup", to: 'users#new'
  post "/users", to: 'users#create'

  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'

  get "/suppliers", to: 'suppliers#index'
  get "/suppliers/:id", to: 'suppliers#show'
  get "/images", to:'images#index'
  get "/images/:id", to:'images#show'
  get "/images/new", to:'images#new'
  post "/images", to:'images#create'

  get "/orders/:id", to: 'orders#show'

  get "/carted_products", to: 'cartedproducts#index'
  post "carted_products", to: 'cartedproducts#create'
 

end

