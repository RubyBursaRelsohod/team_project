class OrdersProduct < ActiveRecord::Base
  # associations
  belongs_to :product
  belongs_to :order

  # validations
  validates :order_id, :product_id, :quantity, presence: true,
            numericality: { only_integer: true }
  validates :order_id, uniqueness: { scope: :product_id, 
            message: "should happen once per order"}
end
