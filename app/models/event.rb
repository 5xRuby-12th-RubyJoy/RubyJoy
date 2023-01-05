class Event < ApplicationRecord

  acts_as_paranoid
  
  belongs_to :user

  validates_presence_of :title,:subtitle,:description,:venue,:receiver,:address,:start_at,:end_at
  validates :phone, numericality: true
  validate :start_date_after_end_date 

  # relation
  has_one_attached :avatar
  has_many :event_products, dependent: :destroy
  has_many :products, through: :event_products

  private
  def start_date_after_end_date
    if start_at < Time.current || end_at < start_at
      errors.add(:start_at,message:"開始時間不能小於現在時間，或者開始日期不能大於結束日期")
    end
  end
end
