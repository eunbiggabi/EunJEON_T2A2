require 'product'
require 'will_paginate'

class HomeController < ApplicationController
  def index
      # @products = Product.all
    @products = Product.paginate(page: params[:page], per_page: 3)
  end
end
