# == Schema Information
#
# Table name: saxophones
#
#  id            :integer          not null, primary key
#  type          :string
#  tonality      :string
#  keys_number   :integer
#  low_key       :string
#  high_key      :string
#  bell_diametr  :float
#  bell_engraved :boolean
#  body_material :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  product_id    :integer
#

FactoryGirl.define do
  factory :saxophone do
    type ""
    tonality "MyString"
    keys_number 1
    low_key "MyString"
    high_key "MyString"
    bell_diametr 1.5
    bell_engraved false
    body_material "MyString"
  end
end
