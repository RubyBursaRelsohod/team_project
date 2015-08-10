# Piano model
class Piano < ActiveRecord::Base
  # associations
  belongs_to :product

  # validations
  validates :color, presence: true,
                    format: { with: /\A[^0-9]+\z/i }
  validates :keys_number, presence: true,
                          numericality: { greater_than: 0,
                                          only_integer: true }
  validates :is_digital, presence: true
end
