class AddDefaultToUserRole < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :role, :integer, default: 0
  end
end
