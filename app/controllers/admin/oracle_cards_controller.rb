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
      redirect_to admin_root_path
    else
      render :new
    end
  end
  
  def edit
    @oracle_card = OracleCard.find(params[:id])
  end
  
  def update
    @oracle_card = OracleCard.find(params[:id])
    if @oracle_card.update(oracle_card_params)
      redirect_to admin_root_path
    else
      render :edit
    end
  end

  def destroy
    @oracle_card = OracleCard.find(params[:id])
    @oracle_card.destroy
    redirect_to admin_root_path
  end
  
  private

  def oracle_card_params
    params.require(:oracle_card).permit(:image, :title, :description, :helper_description)
  end
end
