class Order < ApplicationRecord
  include AASM
  before_validation :generate_serial
  belongs_to :product
  belongs_to :user
  validates :price, :sold_quantity, presence: true

  aasm column: 'state', no_direct_assignment: true do
    state :pending, initial: true
    state :paid, :cancelled, :refunded

    event :pay do
      transitions from: :pending, to: :paid
    end

    event :cancel do
      transitions from: %i[pending refunded], to: :cancelled
    end

    event :refund do
      transitions from: :paid, to: :refunded
    end
  end

  private
  def generate_serial
    self.serial = SecureRandom.alphanumeric(12)
  end
end
