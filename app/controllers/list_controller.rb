# coding: utf-8
class ListController < ApplicationController
  def index
      render template: "card/index"
  end
  
  def conference
      render template: "card/conference"
  end
  
  def conference_b
      render template: "card/conference_b"
  end
  
  def incense
      render template: "card/incense"
  end 
  
  def incense_b
      render template: "card/incense_b"
  end 
  
  def oracle
      render template: "card/oracle"
  end 
  
  def counseling
      render template: "card/counseling"
  end 
  
  def question
      render template: "card/question"
  end

  # メールアドレスチェックの正規表現
  # https://qiita.com/shunhikita/items/772b81a1cc066e67930e  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # お問い合わせ送信
  def question_send
    @email = params[:email]
    @message = params[:message]

    @error_messages = []
    
    # エラー処理
    if not VALID_EMAIL_REGEX.match(@email)
      @error_messages << "メールアドレスが不正です。"
    end
    
    if @message.blank?
      @error_messages << "お問い合わせ内容を入力して下さい。"
    end

    if @error_messages.size > 0
      render template: "card/question"
      return
    end
    
    # メール送信
    QuestionMailer.send_question(@email, @message).deliver
    
    render template: "card/send_complete"
  end 
  
  def video
      render template: "card/video"
  end 
  
  def oracle_b
      render template: "card/oracle_b"
  end 
  
  def counseling_b
      render template: "card/counseling_b"
  end 
  
  end 
