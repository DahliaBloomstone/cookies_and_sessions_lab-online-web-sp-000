#Create a Products controller with two actions, index and add.
#Create the routes for the application, we only need two routes, one to display the Products#index (the root route) and one to post the products to add them to the cart.

class ProductsController < ApplicationController
  def index
  end

  def add
     # Load the cart from the session, or create a new empty cart.
    cart << params[:product]
    redirect_to '/'
  end
end
