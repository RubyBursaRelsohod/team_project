class Product < ActiveRecord::Base
  has_one :guitar
  has_one :saxophone
  has_one :piano
  has_many :comments
  belongs_to :products_category
  has_many :orders_products
  has_one :violin
end
