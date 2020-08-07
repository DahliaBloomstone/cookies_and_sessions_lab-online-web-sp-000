#Create a Products controller with two actions, index and add.
#Create the routes for the application, we only need two routes, one to display the Products#index (the root route) and one to post the products to add them to the cart.

class ProductsController < ApplicationController 


def add_to_cart
  @product = Product.find(params[:id])

current_cart << @product.id
end
