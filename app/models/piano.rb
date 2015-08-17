# == Schema Information
#
# Table name: pianos
#
#  id                 :integer          not null, primary key
#  color              :string
#  keys_number        :integer
#  black_keys_surface :string
#  white_keys_surface :string
#  is_digital         :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  product_id         :integer
#

# Piano model
class Piano < ActiveRecord::Base
  # associations
  belongs_to :product

  # validations
  validates :color, presence: true,
                    format: { with: /\A[^0-9]+\z/i }
  validates :keys_number, :product_id, presence: true,
                          numericality: { greater_than: 0,
                                          only_integer: true }
end
