class AddProductToOrder < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :products, :orders
  end
end
