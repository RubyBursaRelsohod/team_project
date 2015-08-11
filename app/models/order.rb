# Order model
class Order < ActiveRecord::Base
  has_many :orders_products, inverse_of: :order
  has_many :products, through: :orders_products
  belongs_to :order_status
  belongs_to :user

  validates :creation, :payment_type, :order_status_id, :user_id, 
            presence: true
  validates_associated :orders_products
end
