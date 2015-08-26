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
# ProductsPhoto model
class ProductsPhoto < ActiveRecord::Base
  belongs_to :product
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
