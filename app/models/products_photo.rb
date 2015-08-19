class ProductsPhoto < ActiveRecord::Base
  belongs_to :product
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, s3_credentials: "#{Rails.root}/config/environments/s3.yml"

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
