# == Schema Information
#
# Table name: orders_products
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer
#  order_id   :integer
#

class OrdersProduct < ActiveRecord::Base
  # associations
  belongs_to :product
  belongs_to :order

  # validations
  validates :order_id, :product_id, :quantity, presence: true,
            numericality: { only_integer: true }
end
