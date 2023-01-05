class OrderCancleJob < ApplicationJob
  queue_as :default

  def perform(order)
    if order.state != "paid"
      @no_sold_product=order.product.stock+order.sold_quantity    
      order.product.update(stock: @no_sold_product)      
    end
  end
end
