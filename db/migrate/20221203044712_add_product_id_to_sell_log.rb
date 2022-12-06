class AddProductIdToSellLog < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :sell_logs, :product
  end
end
