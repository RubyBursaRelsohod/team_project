# Order model
class Order < ActiveRecord::Base
  has_one :order_status
  belongs_to :user
end
