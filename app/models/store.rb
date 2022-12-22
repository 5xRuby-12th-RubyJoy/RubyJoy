class Store < ApplicationRecord
  belongs_to :user
<<<<<<< Updated upstream
  has_many :products, :dependent => :destroy
  # relation
=======
  has_many :products
  has_many :orders
>>>>>>> Stashed changes
  has_one_attached :avatar
end
