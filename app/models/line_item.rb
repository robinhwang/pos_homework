class LineItem < ActiveRecord::Base
  attr_accessible :product, :cart_id, :product_id
  belongs_to :order
  belongs_to :product

  def total_price
    product.price * quantity
  end
end
