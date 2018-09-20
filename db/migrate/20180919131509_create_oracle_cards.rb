class CreateOracleCards < ActiveRecord::Migration[5.2]
  def change
    create_table :oracle_cards do |t|
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
