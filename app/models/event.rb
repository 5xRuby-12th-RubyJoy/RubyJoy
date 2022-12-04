class Event < ApplicationRecord
  belongs_to :user
  has_many :products,through :event_product
end
