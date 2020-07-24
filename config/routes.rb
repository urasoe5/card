Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "list#index"

  get "index" => "list#index"
  get "painting" => "list#painting_index"
  get "work" => "list#work_index"

  get "mandara/:id" => "list#mandara_show"
  get "painting/:id" => "list#painting_show"
  get "work/:id" => "list#work_show"

  get "profile" => "list#profile"

  get "oracle" => "list#oracle"
  get "oracle_b" => "list#oracle_b"

  # 管理画面
  namespace :admin do
    root to: "oracle_cards#index"
    resources :oracle_cards
  end

  post "question_send" => "list#question_send"

  # 大宇宙インセンスの残骸
  #get "conference" => "list#conference"
  #get "conference_b" => "list#conference_b"
  #get "incense" => "list#incense"
  #get "incense_b" => "list#incense_b"
  #get "counseling" => "list#counseling"
  #get "counseling_b" => "list#counseling_b"
  #get "video" => "list#video"
  # 大宇宙インセンスご注文
  #get "order" => "list#order"
  #post "order_send" => "list#order_send"
  # お問い合わせ
  #get "question" => "list#question"

  # メール送信テスト用
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
