# == Schema Information
#
# Table name: violins
#
#  id            :integer          not null, primary key
#  weight        :integer
#  body_material :string
#  size          :string
#  string_count  :integer
#  bow_included  :boolean
#  color         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  product_id    :integer
#

FactoryGirl.define do
  factory :violin do
    product_id 1
    weight 1
    body_material "MyString"
    size "MyString"
    string_count 1
    bow_included false
    color "MyString"
  end
end
