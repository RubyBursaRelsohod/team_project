# OrderStatus model
class OrderStatus < ActiveRecord::Base
  has_many :orders

  validates :name, presence: true
end
