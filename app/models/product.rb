class Product < ApplicationRecord
  acts_as_paranoid
  # validate
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock, presence: true

  # relation
  has_one_attached :avatar
  has_many :event_products
  has_many :events, through: :event_products
end
