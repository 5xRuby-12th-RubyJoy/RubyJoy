class CreateEventProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :event_products do |t|
      t.integer :quantity
      t.references :event, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
