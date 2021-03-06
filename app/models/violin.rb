# == Schema Information
#
# Table name: violins
#
#  id            :integer          not null, primary key
#  weight        :integer
#  body_material :string
#  size          :string
#  string_count  :integer
#  bow_included  :boolean
#  color         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  product_id    :integer
#
# Violin model
class Violin < ActiveRecord::Base
  # ActiveAdmin display (lib/active_admin_displayable.rb).
  # Includes the display_name method for ActiveAdmin controls.
  include ActiveAdminDisplayable

  belongs_to :product

  validates :weight, presence: true,
                     numericality: { greater_than: 0, only_integer: true }

  validates :body_material, presence: true
  validates :size, presence: true
  validates :string_count, presence: true,
                           numericality: { greater_than: 0,
                                           only_integer: true }
  validates :color, presence: true, length: { minimum: 3 }
  validates :product_id, presence: true, numericality: { only_integer: true },
                         uniqueness: true
end
