# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  delivery_date   :datetime
#  creation_date   :datetime
#  payment_type    :string
#  delivery_type   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  order_status_id :integer
#  user_id         :integer
#
# Order model
class Order < ActiveRecord::Base
  has_many :orders_products, inverse_of: :order
  has_many :products, through: :orders_products
  belongs_to :order_status
  belongs_to :user
  validates :payment_type, :delivery_type, :creation_date, :delivery_date,
            presence: true
  validates :order_status_id, :user_id, presence: true,
                                        numericality: { only_integer: true }
  validates_associated :orders_products
  validates_associated :order_status
end
