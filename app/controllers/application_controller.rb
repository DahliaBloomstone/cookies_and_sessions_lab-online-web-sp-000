class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


#Create the cart method in ApplicationController#cart, this method should return an array of the items stored in the cart (utilizing the Rails session method).
helper_method :cart


def cart
  session[:cart] ||= []
  end
end

#same code up there wrapped up in a helper method 
#def add_to_cart
  # Get the item from the path
#  @item = Item.find(params[:id])

  # Load the cart from the session, or create a new empty cart.
  #cart = session[:cart] || []
  #cart << @item.id

  # Save the cart in the session.
  #session[:cart] = cart
end
