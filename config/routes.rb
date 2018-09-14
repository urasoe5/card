Rails.application.routes.draw do
  root to: "list#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get "index" => "list#index"
   
   get "conference" => "list#conference" 
   
   get "conference_b" => "list#conference_b"
   
   get "incense" => "list#incense"
   
   get "incense_b" => "list#incense_b"
   
   get "oracle" => "list#oracle"
   
   get "counseling" => "list#counseling"
   
   # お問い合わせ
   get "question" => "list#question"
   post "question_send" => "list#question_send"
   
   # 大宇宙インセンスご注文
   get "order" => "list#order"
   post "order_send" => "list#order_send"
   
   get "video" => "list#video"
   
   get "oracle_b" => "list#oracle_b"
   
   get "counseling_b" => "list#counseling_b"
   
   # メール送信テスト用
   mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
   
  end 

