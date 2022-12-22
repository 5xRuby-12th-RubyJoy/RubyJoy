class RemoveCloumnFromOrder < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :store_id
  end
end
