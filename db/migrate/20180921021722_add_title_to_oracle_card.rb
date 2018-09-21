class AddTitleToOracleCard < ActiveRecord::Migration[5.2]
  def change
    add_column :oracle_cards, :title, :string
  end
end
