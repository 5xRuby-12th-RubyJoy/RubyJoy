class RubyJoyMailer < ApplicationMailer
  
  def pay_suecess_notify(order)
    @order = order
    mail to: order.user.email, subject: '您的禮物訂單已完成付款，非常感謝您使用RubyJoy的服務。'
  end

  def gift_purchased_notify(order)
    @order = order
    mail to: order.product.events.first.user.email, subject: '您的禮物正在來的路上，非常感謝您使用RubyJoy的服務。'
  end
end
