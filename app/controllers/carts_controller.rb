require 'product'

class CartsController < ApplicationController
  def index
    @products = Product.all
  end
end
