class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new()
    @categories = Category.all
  end

  def create
    @product = Product.create(product_params)
    puts("....................los resultados del checkbox son.....................")
    puts(product_params)
    puts(category_params)

    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy

    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
  def category_params
    params.require(:category).permit! if params[:ad].present?
  end
end
