class Product < ApplicationRecord
  belongs_to :store
  belongs_to :sell_log
end
