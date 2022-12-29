class AddDeletedColumnToStoreModel < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :deleted_at, :datetime
  end
end
