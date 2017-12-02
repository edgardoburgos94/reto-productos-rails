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
    puts("....................los resultados del checkbox son!!!.....................")
    puts(product_params)
    categories = category_params
    puts(categories)
    if categories != nil
      categories.each do |category|
        id = category[1..-1].to_i
        puts("el id es #{id}")
        Category.find(id).products << @product
      end
    end
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      
      categories = category_params
      @product.categories.delete(Category.all)
      redirect_to products_path
      if categories != nil
        categories.each do |category|
          id = category[1..-1].to_i
          puts("el id es #{id}")
          Category.find(id).products << @product
        end
      end
    else
      render :edit
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
    params.require(:category).permit! if params[:category].present?
  end
end
