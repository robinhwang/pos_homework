class Product < ActiveRecord::Base
  attr_accessible :title, :price, :intro
  validates :title, :price, :intro, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  private
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line items present')
      return false
    end
  end
end
