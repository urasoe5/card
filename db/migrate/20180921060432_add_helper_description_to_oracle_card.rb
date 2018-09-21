class AddHelperDescriptionToOracleCard < ActiveRecord::Migration[5.2]
  def change
    add_column :oracle_cards, :helper_description, :string
  end
end
