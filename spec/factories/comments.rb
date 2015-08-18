# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  product_id :integer
#

# FactoryGirl.define do
#   factory :comment do
#     user_id 1
#     product_id 1
#     body "MyText"
#   end
# end
