#Create a Products controller with two actions, index and add.
#Create the routes for the application, we only need two routes, one to display the Products#index (the root route) and one to post the products to add them to the cart.

class ProductsController < ApplicationController

def index
  @cart = cart
end

def add
cart << product_params
redirect_to :products
end


private

def product_params
  params.requrie(:product)

end 
end
