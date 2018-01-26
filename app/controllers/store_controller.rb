class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  
  def index
    #@products = Product.order(:title)
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end  
    @counter = get_loader_counter
    
  end

  protected
    def get_loader_counter
      session[:counter] ||= 0
      return session[:counter] += 1
    end

end
