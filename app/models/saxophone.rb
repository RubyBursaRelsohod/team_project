class Saxophone < ActiveRecord::Base
  belongs_to :product

  validates :product_id, presence: true, numericality: { greater_than: 0,
                                                         only_integer: true }
  validates :bell_diametr, presence: true
  validates :type, :tonality, :low_key, :high_key, presence: true
  validates_numericality_of :bell_diametr
end
