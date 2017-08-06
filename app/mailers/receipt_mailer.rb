class ReceiptMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def receipt_email(current_user, order)
    @current_user = current_user
    @order = order
    mail(to: @current_user.email, subject: "Confirmation Order")
  end
end