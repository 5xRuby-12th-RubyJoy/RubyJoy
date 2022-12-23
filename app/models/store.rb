class Store < ApplicationRecord
  # relation
  belongs_to :user
  has_many :orders
  has_many :products, :dependent => :destroy
  has_one_attached :avatar
end
