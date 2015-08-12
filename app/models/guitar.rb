class Guitar < ActiveRecord::Base
  belongs_to :product

  validates :frets, :chords, :weight, :product_id, presence: true, numericality: 
            { greater_than: 0, only_integer: true }
  validates :dimensions, presence: true, numericality: true
  validates :is_digital, presence: true 
  validates_associated :product
end
