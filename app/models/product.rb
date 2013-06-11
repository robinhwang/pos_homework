class Product < ActiveRecord::Base
  attr_accessible :title, :price, :intro
  has_many :line_items
end
