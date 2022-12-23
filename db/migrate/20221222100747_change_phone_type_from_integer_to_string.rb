class ChangePhoneTypeFromIntegerToString < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :phone, :string
  end
end
