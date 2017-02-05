class User < ApplicationRecord
  has_many :orders
  has_many :carted_products
  has_many :products, through: :carted_product
  has_secure_password
end
