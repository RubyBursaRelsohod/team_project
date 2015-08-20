# == Schema Information
#
# Table name: products_photos
#
#  id                 :integer          not null, primary key
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  product_id         :integer
#

FactoryGirl.define do
  factory :products_photo do
    photo ""
product ""
  end

end
