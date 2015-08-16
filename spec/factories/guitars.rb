# == Schema Information
#
# Table name: guitars
#
#  id         :integer          not null, primary key
#  frets      :integer
#  chords     :integer
#  dimensions :float
#  weight     :integer
#  is_digital :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer
#

FactoryGirl.define do
  factory :guitar do
    product_id 1
    frets 1
    chords 1
    dimentions "MyString"
    weight 1
    is_digital false
  end
end
