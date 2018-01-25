class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)

    #show load counter messages
    counter = get_loader_counter
    @show_counter = "Session: #{counter} " + 'time'.pluralize
  end

  protected
  def get_loader_counter
    session[:counter] ||= 0
    return session[:counter] += 1
  end

end
