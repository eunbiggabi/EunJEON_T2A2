require 'product'
require 'user_address'
require 'will_paginate'

class HomeController < ApplicationController
  def index
      # @products = Product.all
    @products = Product.paginate(page: params[:page], per_page: 3)
    @user_address = UserAddress.all
  end
end
