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
