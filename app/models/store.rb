class Store < ApplicationRecord
  belongs_to :user
  has_many :products, :dependent => :destroy
  # relation
  has_many :products
  has_many :orders
  has_one_attached :avatar
end
