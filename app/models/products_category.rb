class ProductsCategory < ActiveRecord::Base
  has_many :products

  validates :name, presence: true
  validates_length_of :name, minimum: 3
end
