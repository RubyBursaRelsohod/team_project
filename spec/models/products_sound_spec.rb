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

require 'rails_helper'

RSpec.describe ProductsSound, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
