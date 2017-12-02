class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
  end
  def destroy
    product = Product.find(params[:id])
    product.destroy

    redirect_to products_path
  end
end
