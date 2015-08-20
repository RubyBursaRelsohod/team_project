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

require 'rails_helper'

RSpec.describe ProductsPhoto, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
