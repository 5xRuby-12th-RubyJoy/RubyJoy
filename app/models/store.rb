class Store < ApplicationRecord
  belongs_to :user
  has_many :products
    # relation
    has_one_attached :avatar

end
