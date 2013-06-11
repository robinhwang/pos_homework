class Product < ActiveRecord::Base
  attr_accessible :title, :price, :intro
  validates :title, :price, :intor, prensence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true

  has_many :line_items
end
