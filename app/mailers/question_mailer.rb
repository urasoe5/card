# coding: utf-8
class QuestionMailer < ApplicationMailer
  default from: "noreply@example.com"

  def send_question(email, message)
    @email = email
    @message = message
    mail(subject: "【大宇宙インセンス】お問い合わせ", to: "kyuuki0@gmail.com")
  end
end
