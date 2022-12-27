class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_product, only: %i[index show edit destroy]
  before_action :find_store, only: %i[index create edit update new]

  def index
    @event = Event.find(params[:event_id]) if current_user?
    @products = @store.products
  end

  def new
    @product = current_user.store.products.new
  end

  def create
    @product = current_user.store.products.new(product_params)
    if @product.save
      redirect_to store_products_path, notice: '成功新增商品'
    else
      render :new
    end
  end

  def show; end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to store_products_path, notice: '已刪除商品'
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to store_products_path, notice: '成功更新商品'
    else
      render :edit
    end
  end

  def buy
    @product = Product.find(params[:product_id])
    @event = Event.find(params[:event_id])
  end

  private

  def find_product
    @product = Product.find_by(id: params[:product_id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :stock, :avatar, :store_id)
  end

  def find_store
    @store = Store.find_by(id: params[:store_id])
  end
end
