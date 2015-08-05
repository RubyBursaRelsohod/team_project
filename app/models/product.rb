class Product < ActiveRecord::Base
  has_one :guitar
  belongs_to :products_category
end
