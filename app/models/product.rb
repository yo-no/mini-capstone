class Product < ApplicationRecord
  belongs_to :supplier
  def sale_message
    
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def on_sale?
    price < 100
  end
end
