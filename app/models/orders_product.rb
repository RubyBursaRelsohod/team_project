class OrdersProduct < ActiveRecord::Base
  # associations
  belongs_to :product

  # validations
  validates :order_id, :product_id, :quantity, presence: true,
                                               numericality:
                                               { only_integer: true }
end
