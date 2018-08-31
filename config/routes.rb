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
   
   get "question" => "list#question"
   
   get "video" => "list#video"
   
   get "oracle_b" => "list#oracle_b"
   
   get "counseling_b" => "list#counseling_b"
   
   
   
  end 

