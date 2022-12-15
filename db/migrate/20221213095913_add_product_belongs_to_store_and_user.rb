class AddProductBelongsToStoreAndUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :user, index: true
  end
end
