class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save

    redirect_to product_path(@product)
  end

  def show; end

  def edit; end

  def update
    @product.update(product_params)

    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:product_title, :description, :rating)
  end

  def set_category
    @categoy = Category.find(params[:id])
  end
end
