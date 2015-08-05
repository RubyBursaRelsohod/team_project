class Product < ActiveRecord::Base
  has_one :guitar
  has_one :saxophone
  has_many :comments
  belongs_to :products_category
end
