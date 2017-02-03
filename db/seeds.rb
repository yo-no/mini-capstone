# Supplier.create!([
#   {name: "Sad Distribution", email: "sadco@gmail.com", phone: "6667771234"},
#   {name: "The Apparel Company", email: "appco@gmail.com", phone: "6667775434"},
#   {name: "Pugs Worldwide", email: "daplug@daplug.biz", phone: "6667771234"}
# ])
# User.create!([
#   {name: "user", email: "user@email.com", password_digest: "$2a$10$UeCvd7.MyfYd7TQ50q31H.H3mKgpumppQKazl0E0stluQQdQRiTE."},
#   {name: "coolguy", email: "coolguy@mywebsite.com", password_digest: "$2a$10$4iqRVz1rzNpPYzfoZ4s2g.JFVGc9VFpb0ynbqZo5ZWlNjj75DWsVO"},
#   {name: "test", email: "test@test.gmail.com", password_digest: "$2a$10$5wnH5cYHoN1LnDUw9C9mYOjXefXBihBtZDJghl7acmqd2uTN8LxOW"},
#   {name: "abc", email: "abc@gmail.com", password_digest: "$2a$10$.oNByGDMVk7fyNEAy.RQAud2A9fP36yUQN8Mo0rLQRnGsg5AyOIgi"}
# ])

# Image.create!([
#   {url: "http://media.istockphoto.com/photos/white-tshirt-clipping-path-picture-id465466963?k=6&m=465466963&s=170667a&w=0&h=CXpJB56LEIBJe17aa_cQhYjN3oMeZjq7L34dNL7IunU=", product_id: 1},
#   {url: "http://rlv.zcache.com/plain_white_t_shirt-re9adf3bb9ae1400fb30b3a0cd0be557f_jyr6t_324.jpg", product_id: 1},
#   {url: "http://media.endclothing.com/media/catalog/product/cache/0/small_image/230x/9df78eab33525d08d6e5fb8d27136e95/2/7/27-01-2017_off-white_offsstee_white_omaa014s171850930110_hh_1.jpg", product_id: 2}
# ])
# Order.create!([
#   {user_id: 1, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 2, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 2, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 2, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 2, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 2, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 2, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 2, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: nil, quantity: 5, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: 10, quantity: 10, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: 1, quantity: 10, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: 10, quantity: 1, subtotal: "324.0", tax: nil, total: nil},
#   {user_id: 1, product_id: 1, quantity: 1, subtotal: "17500.0", tax: nil, total: nil},
#   {user_id: 1, product_id: 1, quantity: 1, subtotal: "17500.0", tax: nil, total: nil},
#   {user_id: 1, product_id: 1, quantity: 2, subtotal: "35000.0", tax: nil, total: nil},
#   {user_id: 1, product_id: 10, quantity: 2, subtotal: "648.0", tax: nil, total: nil},
#   {user_id: 1, product_id: 14, quantity: 10, subtotal: "10.0", tax: "0.9", total: "10.9"},
#   {user_id: 1, product_id: 10, quantity: 2, subtotal: "648.0", tax: "58.32", total: "706.32"},
#   {user_id: 1, product_id: 10, quantity: 80, subtotal: "25920.0", tax: "2332.8", total: "28252.8"}
# ])
# Product.create!([
#   {name: "Hazel Kuvalis T-Shirt", size: "L", color: "White", price: "324.0", description: "Waistcoat cred farm-to-table wolf asymmetrical hella xoxo. Portland blue bottle yolo pop-up.", in_stock: true, supplier_id: 1},
#   {name: "Miss Mable Hyatt T-Shirt", size: "L", color: "White", price: "196.0", description: "Forage fingerstache 90's small batch photo booth. Williamsburg irony pbr&b iphone wayfarers. Organic williamsburg food truck.", in_stock: true, supplier_id: 1},
#   {name: "Same Color T-shirt (White)", size: "L", color: "White", price: "17500.0", description: "50% cotton, 50% polyester, 100% white", in_stock: true, supplier_id: 2},
#   {name: "OFF-WHITE T-shirt", size: "L", color: "White", price: "1200.0", description: "Distress. Drama. The word OFF. Truly, a masterpiece.", in_stock: true, supplier_id: 1},
#   {name: "t shirt", size: "cool", color: "white", price: "777.0", description: "u deserve it", in_stock: true, supplier_id: 2},
#   {name: "American Apparel T-shirt", size: "S", color: "White", price: "16.0", description: "basics", in_stock: true, supplier_id: 1},
#   {name: "Hanes", size: "XL", color: "White", price: "5.0", description: "it's lit my doge", in_stock: true, supplier_id: 3},
#   {name: "shirt", size: "l", color: "white", price: "1.0", description: "cool shirt", in_stock: true, supplier_id: 3},
#   {name: "new shirt!", size: "l", color: "white", price: "30.0", description: "cool shirt dude", in_stock: true, supplier_id: 1}
# ])

# Category.create!([
#   {name: "Designer"},
#   {name: "Wholesale"},
#   {name: "Swaggy"}
# ])
ProductCategory.create!([
  {product_id: 10, category_id: 1},
  {product_id: 10, category_id: 3},
  {product_id: 11, category_id: 1},
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 2, category_id: 3},
  {product_id: 12, category_id: 2},
  {product_id: 3, category_id: 2},
  {product_id: 5, category_id: 3},
  {product_id: 5, category_id: 2},
  {product_id: 14, category_id: 2},
  {product_id: 16, category_id: 2}
  ])
