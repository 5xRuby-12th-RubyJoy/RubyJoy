class AddEventToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :event, null: false, foreign_key: true
  end
end
