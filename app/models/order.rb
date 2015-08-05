# Order model
class Order < ActiveRecord::Base
  has_many :order_statuses
  has_many :orders_products
  belongs_to :user
end
