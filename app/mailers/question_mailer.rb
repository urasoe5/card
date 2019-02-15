# coding: utf-8
class QuestionMailer < ApplicationMailer
  default from: "noreply@example.com"

  def send_question(email, message)
    @email = email
    @message = message
    mail(subject: "曼荼羅サイトお問い合わせ", to: "urasoe5@gmail.com")
  end
end
