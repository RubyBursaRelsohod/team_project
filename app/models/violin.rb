class Violin < ActiveRecord::Base
  belongs_to :product

  validates :weight, presence: true,
                     numericality: { greater_than: 0, only_integer: true }

  validates :body_material, :bow_included, presence: true
  validates :size, presence: true
  validates :string_count, presence: true,
                           numericality: { greater_than: 0,
                                           only_integer: true }
  validates :color, presence: true, length: { minimum: 3 }
  validates :product_id, presence: true, numericality: { only_integer: true },
                         uniqueness: true
end
