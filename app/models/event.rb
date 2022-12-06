class Event < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :description, presence: true
  validates :venue, presence: true
  
end
