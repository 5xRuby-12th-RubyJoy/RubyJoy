class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price, default: 0
      t.integer :stock
      t.datetime :deleted_at
      t.references :store, null: false, foreign_key: true
      t.references :sell_log, null: false, foreign_key: true

      t.timestamps
    end
  end
end
