class CreateSellLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :sell_logs do |t|
      t.integer :current_quantity
      t.integer :sold_quantity
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
