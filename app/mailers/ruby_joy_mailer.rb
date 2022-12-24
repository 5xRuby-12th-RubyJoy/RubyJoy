class RubyJoyMailer < ApplicationMailer
  def pay_suecess_notify(email)
    mail to: email, subject: '付款成功'
  end
end
