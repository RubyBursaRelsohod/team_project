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

FactoryGirl.define do
  factory :order do
  end
end
