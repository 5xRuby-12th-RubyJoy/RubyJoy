class EventProduct < ApplicationRecord
  belongs_to :event
  belongs_to :product
end
