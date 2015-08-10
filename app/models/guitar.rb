class Guitar < ActiveRecord::Base
  belongs_to :product

  validates :frets, presence: true, numericality: { greater_than: 0,
                                                    only_integer: true }
  validates :chords, presence: true, numericality: { greater_than: 0,
                                                     only_integer: true }
  validates :dimensions, presence: true
  validates :weight, presence: true, numericality: { greater_than: 0,
                                                     only_integer: true }
  validates :is_digital, presence: true 
  validates :product_id, presence: true, numericality: { greater_than: 0,
                                                         only_integer: true }

end
