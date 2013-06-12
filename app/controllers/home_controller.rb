class HomeController < ApplicationController
  def index
    @products = Product.order(:title)
    @order = current_order
    render layout: false
  end
end
