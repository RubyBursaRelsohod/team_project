# == Schema Information
#
# Table name: guitars
#
#  id         :integer          not null, primary key
#  frets      :integer
#  chords     :integer
#  dimensions :float
#  weight     :integer
#  is_digital :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer
#

class Guitar < ActiveRecord::Base
  # ActiveAdmin display (lib/active_admin_displayable.rb).
  # Includes the display_name method for ActiveAdmin controls.
  include ActiveAdminDisplayable

  belongs_to :product

  validates :frets, :chords, :weight, :product_id, presence: true, numericality:
            { greater_than: 0, only_integer: true }
  validates :dimensions, presence: true, numericality: true
  validates_associated :product
end
