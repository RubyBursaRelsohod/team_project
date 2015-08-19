class ProductsSound < ActiveRecord::Base
  belongs_to :product
  has_attached_file :sound, s3_credentials: "#{Rails.root}/config/environments/s3.yml"

  validates_attachment_presence :sound
#  validates_attachment_content_type :sound, :content_type => /.*/
  validates_attachment_content_type :sound, :content_type =>  [ 'audio/mp3','audio/mpeg' ]
  validates_attachment_content_type :sound, :content_type => [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]  
end
