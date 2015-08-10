# Order model
class Order < ActiveRecord::Base
  has_many :orders_products
  belongs_to :order_status
  belongs_to :user

  validates :creation_date, presence: true
  validates :payment_type, presence: true
  validates :order_status_id, presence: true
  validates :user_id, presence: true
  

end
