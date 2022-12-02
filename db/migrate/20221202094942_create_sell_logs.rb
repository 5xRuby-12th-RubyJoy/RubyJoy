class CreateSellLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :sell_logs do |t|
      t.integer :current_quantity, default: 1
      t.integer :sold_quantity
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
