class ProductsController < ApplicationController
before_action :find_product,only: [:show,:edit,:destroy,:update]
  def index; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: '成功'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: '已刪除'
  end

  def update
    if @product.update(product_params)
      redirect_to products_path, notice: '成功'
    else
      render :edit
    end
  end

  private
    def find_product
      @product = find_by(id: params[:id])
    end


  def product_params
    params.require(:product).permit(:name, :description, :price, :stock,:avatar)
  end
end

