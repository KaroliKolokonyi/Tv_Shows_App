Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/tv_shows", to: 'products#index'
  get "/tv_shows/new", to: 'products#new'
  get "/tv_shows/:id",to: 'products#show'
  post "/tv_shows",to: 'products#create'

  get "/tv_shows/:id/edit", to: 'products#edit'

  patch "/tv_shows/:id", to: 'products#update'

  delete "/tv_shows/:id", to: 'products#destroy'

end
