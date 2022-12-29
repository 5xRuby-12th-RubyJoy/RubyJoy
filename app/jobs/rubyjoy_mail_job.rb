class RubyjoyMailJob < ApplicationJob
  queue_as :default

  def perform(order)
    RubyJoyMailer.pay_suecess_notify(order).deliver
    RubyJoyMailer.gift_purchased_notify(order).deliver
  end
end
