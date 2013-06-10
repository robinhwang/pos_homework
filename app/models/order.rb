class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  belongs_to :user, :inverse_of => :order
end
