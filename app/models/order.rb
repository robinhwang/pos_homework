class Order < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :products
  belongs_to :user, :inverse_of => :order
end
