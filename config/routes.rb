Rails.application.routes.draw do
  resources :categories, except: :show # Quitamos la opcion show
  
  # delete '/products/:id', to: 'products#destroy'
  # post '/products', to: 'products#create'
  # patch '/products/:id', to: 'products#update'
  # get '/products/new', to: 'products#new', as: :new_product
  # get '/products/:id/edit', to: 'products#edit', as: :edit_product
  # get '/products', to: 'products#index'
  # get '/products/:id', to: 'products#show', as: :product
  resources :products, path: '/' # Con esto podemos obviar las lineas anteriores al usar la convencion de nombres por defecto de rails, 
                                 # y con path: '/' hacemos que /products resida en /
end
