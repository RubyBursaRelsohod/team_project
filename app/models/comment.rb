# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  product_id :integer
#

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :body, presence: true, length: { maximum: 5000 }
  validates :user_id, :product_id, presence: true, numericality:
            { greater_than: 0, only_integer: true }
  # validates_associated :user, :product

  # Method for displaying comment's id, user's full
  # name and product name in AdminPanel. ActiveAdmin
  # uses the `display_name` method in models for its
  # drop-down inputs.
  def display_name
    id.to_s + '. From: ' + user.first_name + ' ' +
      user.last_name + '. On: ' + product.name
  end
end
