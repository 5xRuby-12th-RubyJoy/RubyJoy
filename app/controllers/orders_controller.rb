class OrdersController < ApplicationController
  before_action :find_product, only: [:create]
  skip_before_action :verify_authenticity_token, only: [:pay]
  protect_from_forgery with: :null_session, only: [:pay]

  def create
    sold_quantity = params[:quantity].to_i
    price = @product.price * sold_quantity

    order = current_user.orders.new(
      sold_quantity:,
      price:,
      product_id: params[:product_id],
      address: params[:address],
      receiver: params[:receiver],
      phone: params[:phone],
      event_id: params[:event_id],
      store_id: @product.store_id
    )

    if order.save
      order.product.with_lock do
        @quantity = order.product.stock - order.sold_quantity
        if @quantity >= 0
          order.product.update(stock: @quantity)
          redirect_to checkout_order_path(id: order.serial)
        else
          redirect_to event_product_buy_path(order.event_id, order.product_id), alert: '商品庫存不足'
        end
      end
    else
      redirect_to event_product_buy_path(order.event_id, oreder.product_id), alert: '訂單建立失敗'
    end
    OrderCancleJob.set(wait: 1.minutes).perform_later(order)
  end

  def checkout
    @order = Order.find_by!(serial: params[:id])
    @product = Product.find(@order[:product_id])
    @form_info = Newebpay::Mpg.new(@order).form_info
  end

  def pay
      @response = Newebpay::MpgResponse.new(params[:TradeInfo])
      order = Order.find_by!(serial: @response.result['MerchantOrderNo'])
      order.product.with_lock do
        @quantity = order.product.stock - order.sold_quantity
      end

      @old_stock = order.product.stock + order.sold_quantity  
      if response.successful?
        order.pay!
        RubyjoyMailJob.perform_later(order)
        redirect_to "https://www.astrocamprubyjoy.com/events/#{order.event_id}", notice: '付款成功'
      else
        order.product.update(stock: @old_stock)
        redirect_to "https://www.astrocamprubyjoy.com/events/#{order.event_id}", alert: '付款發生問題'
      end
  end

  private
  def find_product
    @product = Product.find(params[:product_id])
  end
end
