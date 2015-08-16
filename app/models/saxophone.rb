# == Schema Information
#
# Table name: saxophones
#
#  id            :integer          not null, primary key
#  type          :string
#  tonality      :string
#  keys_number   :integer
#  low_key       :string
#  high_key      :string
#  bell_diametr  :float
#  bell_engraved :boolean
#  body_material :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  product_id    :integer
#

class Saxophone < ActiveRecord::Base
  belongs_to :product

  validates :product_id, presence: true, numericality: { greater_than: 0,
                                                         only_integer: true }
  validates :bell_diametr, presence: true, numericality: true
  validates :type, :tonality, :low_key, :high_key, presence: true
end
