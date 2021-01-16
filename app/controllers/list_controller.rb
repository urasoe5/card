class ListController < ApplicationController
  def index
    @imgs = [24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,]
    render template: "statics/index"
  end
  def painting_index
    @imgs2 = [12,11,10,9,8,7,6,5,4,3,2,1,]
    render template: "statics/painting"
  end
  def work_index
    @imgs3 = [15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,]
    render template: "statics/work"
  end
  
    #拡大画面
  def mandara_show
    @id = params[:id]
    render template: "statics/show1"
  end
  def painting_show
    @id = params[:id]
    render template: "statics/show2"
  end
  def work_show
    @id = params[:id]
    render template: "statics/show3"
  end

  def profile
    render template: "statics/profile"
  end
  
  def oracle
      render template: "card/oracle"
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
      render template: "statics/profile"
      return
    end
    
    # メール送信
    QuestionMailer.send_question(@email, @message).deliver
    
    render template: "statics/question_send_complete"
  end 

  def oracle_b
    @oracle_card = OracleCard.offset(rand(OracleCard.count)).first
    render template: "card/oracle_b"
  end
end
