# == Schema Information
#
# Table name: order_statuses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# OrderStatus model
class OrderStatus < ActiveRecord::Base
  has_many :orders

  validates :name, presence: true
end
