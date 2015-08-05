# Order model
class Order < ActiveRecord::Base
  has_many :order_statuses
  belongs_to :user
end
