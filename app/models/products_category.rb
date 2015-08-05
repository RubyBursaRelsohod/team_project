class ProductsCategory < ActiveRecord::Base
  has_many :products
end
