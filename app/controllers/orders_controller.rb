class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:checkout]
  before_action :find_product, only: [:create]
  skip_before_action :verify_authenticity_token, only: [:pay]

  def create
    sold_quantity = params[:quantity].to_i
    price = @product.price * sold_quantity
 
    order = current_user.orders.new(
      sold_quantity:,
      price:,
      product_id: params[:product_id],
      address: params[:address],
      receiver: params[:receiver],
      phone: params[:phone]
    )

    if order.save
      redirect_to checkout_order_path(id: order.serial)
    else
      redirect_to buy_product_path(@product), alert: '訂單建立失敗'
    end
  end

  def checkout
    @order = Order.find_by!(serial: params[:id])
    @product = Product.find(@order[:product_id])
    @form_info = Newebpay::Mpg.new(@order).form_info
  end


  def pay
   
    # @product=order.product
   
    
      response = Newebpay::MpgResponse.new(params[:TradeInfo])
      
      order = Order.find_by!(serial: response.result['MerchantOrderNo'])
      
      if response.success?
        order.pay!
        redirect_to root_path, notice: '付款成功'
      else
        redirect_to root_path, alert: '付款發生問題'
      end
   
  end

  private
  def count_stock
    @product.stock - @order.sold_quantity
  end
  def find_product
    @product = Product.find(params[:product_id])
  end
end
