class Sell < ApplicationRecord
    has_one_attached :file
  
    validates :name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "is not a valid email address" }
    validates :phone, presence: true, length: { is: 11 }, numericality: { only_integer: true }
    validates :file, presence: true
    validates :manufacturer_name, presence: true
    validates :manufacturer_model, presence: true
    validates :serial, presence: true
    validates :year, presence: true, numericality: { only_integer: true, greater_than: 1900, less_than_or_equal_to: Date.today.year }
    validates :fuel_types, presence: true
    validates :power_sources, presence: true
    validates :condition, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :description, presence: true, length: { maximum: 500 }
  end
  