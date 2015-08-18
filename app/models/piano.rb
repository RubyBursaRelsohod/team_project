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
  # ActiveAdmin display (lib/active_admin_displayable.rb).
  # Includes the display_name method for ActiveAdmin controls.
  include ActiveAdminDisplayable

  # associations
  belongs_to :product

  # validations
  validates :color, presence: true
  validates :keys_number, :product_id, presence: true,
                          numericality: { greater_than: 0,
                                          only_integer: true }
end
