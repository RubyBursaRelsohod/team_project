# == Schema Information
#
# Table name: products_sounds
#
#  id                 :integer          not null, primary key
#  sound_file_name    :string
#  sound_content_type :string
#  sound_file_size    :integer
#  sound_updated_at   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  product_id         :integer
#
# ProductsSound model
class ProductsSound < ActiveRecord::Base
  belongs_to :product
  has_attached_file :sound
  validates_attachment_presence :sound
  validates_attachment_content_type :sound, content_type: ['audio/mp3', 'audio/mpeg']
  validates_attachment_content_type :sound, content_type: ['audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio']
end
