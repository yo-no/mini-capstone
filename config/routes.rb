Rails.application.routes.draw do
   get '/tshirt' => 'products#tshirt'
   get '/all_products' => 'products#all_products'
   get '/new_product' =>  'products#new_product'
   post '/product_success' => 'products#product_success'
end
