# == Schema Information
#
# Table name: pianos
#
#  id                 :integer          not null, primary key
#  color              :string
#  keys_number        :integer
#  black_keys_surface :string
#  white_keys_surface :string
#  is_digital         :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  product_id         :integer
#

FactoryGirl.define do
  factory :piano do
  end
end
