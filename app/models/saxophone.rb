class Saxophone < ActiveRecord::Base
  belongs_to :product

  validates :product_id, presence: true, numericality: { greater_than: 0,
                                                         only_integer: true }
  validates :bell_diametr, presence: true, numericality: true
  validates :type, :tonality, :low_key, :high_key, presence: true
end
