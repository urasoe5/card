class Admin::OracleCardsController < Admin::ApplicationController
  def index
    @oracle_cards = OracleCard.all
  end
  
  def new
    @oracle_card = OracleCard.new
  end
  
  def create
    @oracle_card = OracleCard.new(oracle_card_params)
    if @oracle_card.save
      # TODO: 通知
      redirect_to admin_root_path
    else
      # TODO: エラー処理
      render :new
    end
  end

  private

  def oracle_card_params
    params.require(:oracle_card).permit(:image, :description)
  end
end
