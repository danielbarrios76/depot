class AdminController < ApplicationController
  def index
    @total_orders = Order.count
    @logged_user = session[:user_name]
  end
end
