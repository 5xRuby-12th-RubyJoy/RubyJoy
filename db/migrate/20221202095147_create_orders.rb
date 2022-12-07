class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :serial
      t.integer :price
      t.integer :sold_quantity
      t.text :address
      t.string :receiver
      t.string :phone
      t.string :state, default: 'pending'
      t.datetime :deleted_at
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
