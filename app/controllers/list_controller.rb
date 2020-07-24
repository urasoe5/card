class ListController < ApplicationController
  MANDARA_IDS = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
  PAINTING_IDS = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ]
  WORK_IDS = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 , ]
  
  def index
    @ids = MANDARA_IDS
    @type = "mandara"
    @type_id = 1

    render template: "statics/index"
  end

  def painting_index
    @ids = PAINTING_IDS
    @type = "painting"
    @type_id = 2
    
    #render template: "statics/painting"
    render template: "statics/index"
  end

  def work_index
    @ids = WORK_IDS
    @type = "work"
    @type_id = 3
    
    #render template: "statics/work"
    render template: "statics/index"
  end

  # 拡大画面
  def mandara_show
    @id = params[:id].to_i
    @image_id = MANDARA_IDS[@id - 1]
    @type = "mandara"
    @type_id = 1
    @no_header = true
    
    render template: "statics/show"
  end

  def painting_show
    @id = params[:id].to_i
    @image_id = PAINTING_IDS[@id - 1]
    @type = "painting"
    @type_id = 2
    @no_header = true
    
    render template: "statics/show"
  end

  def work_show
    @id = params[:id].to_i
    @image_id = WORK_IDS[@id - 1]
    @type = "work"
    @type_id = 3
    @no_header = true
    
    render template: "statics/show"
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
