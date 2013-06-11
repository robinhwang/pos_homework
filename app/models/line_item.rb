class LineItem < ActiveRecord::Base
  attr_accessible :product
  belongs_to :order
  belongs_to :product
end
