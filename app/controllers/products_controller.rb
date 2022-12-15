class ProductsController < ApplicationController
  before_action :find_product, only: %i[show edit destroy update buy]
  before_action :find_store, only: %i[create index edit update new]

  def index
    @products = @store.products
    @event = Event.find(params[:event_id])
  end

  def new
    @product = current_user.store.products.new
  end

  def create
    @product = current_user.store.products.new(product_params)
    if @product.save
      redirect_to store_products_path, notice: "成功新增商品"
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def destroy
    @product.destroy
    redirect_to store_products_path, notice: "已刪除商品"
  end

  def update
    if @product.update(product_params)
      redirect_to store_products_path, notice: "成功更新商品"
    else
      render :edit
    end
  end

  def buy
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :stock, :avatar, :store_id)
  end

  def find_store
    @store = Store.find(params[:store_id])
  end

  
end
