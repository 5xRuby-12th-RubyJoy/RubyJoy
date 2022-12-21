class ProductAddReceiverData < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :address, :text 
    add_column :events, :phone, :integer
    add_column :events, :receiver, :text
  end
end
