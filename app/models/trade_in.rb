class TradeIn < ApplicationRecord
    validates :fullname, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "is not a valid email address" }
    validates :phone, presence: true
    validates :zip, presence: true
    validates :manufacturer_name, presence: true
    validates :manufacturer_model, presence: true
    validates :serial, presence: true
    validates :years, presence: true, numericality: { only_integer: true }
    validates :options, presence: true
    validates :body, presence: true, numericality: { only_integer: true }
    validates :paint, presence: true, numericality: { only_integer: true }
    validates :glass, presence: true, numericality: { only_integer: true }
    validates :rust, presence: true, numericality: { only_integer: true }
    validates :frame, presence: true, numericality: { only_integer: true }
    validates :electronic_components, presence: true, numericality: { only_integer: true }
    validates :motor, presence: true, numericality: { only_integer: true }
    validates :bearings, presence: true, numericality: { only_integer: true }
    validates :mechanical_problems, presence: true, numericality: { only_integer: true }
  end
  