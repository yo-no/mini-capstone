class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images

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

  def default_image
    if images.count > 0
      images.first.url
    else
      "http://farm1.static.flickr.com/22/31305664_942096f233.jpg"
    end
  end
  
end
