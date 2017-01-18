Rails.application.routes.draw do
   get '/tshirt' => 'products#tshirt'
   get '/all_products' => 'products#all_products'
end
