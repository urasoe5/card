class OrderMailer < ApplicationMailer
  default from: "noreply@example.com"

  def send_question(name, email, postal_code, address, tel, product, message)
    @name = name
    @email = email
    @postal_code = postal_code
    @address = address
    @tel = tel
    @product = product
    @message = message
    mail(subject: "【大宇宙インセンス】ご注文", to: "kyuuki0@gmail.com")
  end
end
