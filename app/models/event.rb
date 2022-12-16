class Event < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :description, presence: true
  validates :venue, presence: true

  # relation
  has_one_attached :avatar
  has_many :event_products, :dependent => :destroy
  has_many :products, through: :event_products
end
