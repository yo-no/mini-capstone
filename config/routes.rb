Rails.application.routes.draw do
   get '/' => 'products#index'
   get '/products' => 'products#index'
   get '/products/new' => 'products#new'

   get '/suppliers/' => 'suppliers#index'
   get '/suppliers/new' => 'suppliers#new'

   # get '/products/random' => 'products#random'
   post '/products/search' => 'products#search'
   get '/products/:id' => 'products#show'
   post '/products' => 'products#create'
   get '/products/:id/edit' => 'products#edit'
   patch '/products/:id' => 'products#update'
   delete '/products/:id' => 'products#destroy'

   get '/suppliers/:id' => 'suppliers#show'
   get '/suppliers/:id/edit' => 'suppliers#edit'
   patch '/suppliers/:id' => 'suppliers#update'
   delete '/suppliers/:id' => 'suppliers#destroy'

   get '/products/:product_id/images/new' => 'images#new'
   post 'products/:product_id/images' => 'images#create'

   get '/signup' => 'users#new'
   post '/users' => 'users#create'

   get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
   get '/logout' => 'sessions#destroy'

   get '/orders' => 'orders#new'
   post '/orders' => 'orders#create'
   get '/orders/:id' => 'orders#show'

   post '/carted_products' => 'carted_products#create'
   get '/carted_products/' => 'carted_products#index'

end
