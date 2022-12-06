class ChangeSeriaToOrder < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :serial
    add_column :orders, :serial, :string
  end
end
