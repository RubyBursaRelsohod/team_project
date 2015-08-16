# == Schema Information
#
# Table name: products_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :products_category do
    name "MyString"
  end
end
