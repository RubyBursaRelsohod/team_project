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

FactoryGirl.define do
  factory :orders_product do
    order_id 1
    product_id 1
    quantity 1
  end
end
