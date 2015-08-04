# OrderStatus model
class OrderStatus < ActiveRecord::Base
  belongs_to :order
end
