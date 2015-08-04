# Order model
class Order < ActiveRecord::Base
  has_one :order_status
end
