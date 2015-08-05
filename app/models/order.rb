# Order model
class Order < ActiveRecord::Base
  has_many :orders_products
  belongs_to :order_status
  belongs_to :user
end
