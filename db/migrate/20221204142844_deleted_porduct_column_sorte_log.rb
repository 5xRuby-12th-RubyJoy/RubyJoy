class DeletedPorductColumnSorteLog < ActiveRecord::Migration[6.1]
  def change
    remove_column :products,:sell_log_id
  end
end
