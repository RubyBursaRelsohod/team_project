# == Schema Information
#
# Table name: products
#
#  id                   :integer          not null, primary key
#  name                 :string
#  price                :float
#  country              :string
#  company              :string
#  quantity             :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  products_category_id :integer
#

FactoryGirl.define do
  factory :product do
    name "MyString"
    category_id 1
    price 1.5
    country "MyString"
    company "MyString"
    quantity 1
  end
end
