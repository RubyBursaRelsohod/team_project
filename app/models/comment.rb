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
# Comment model
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  auto_html_for :body do
    html_escape
    image(width: 250, height: 250)
    youtube(width: 400, height: 250, autoplay: false)
    link target: '_blank', rel: 'nofollow'
    simple_format
  end

  validates :body, presence: true, length: { maximum: 5000 }
  validates :user_id, :product_id, presence: true, numericality:
            { greater_than: 0, only_integer: true }

  # Method for displaying comment's id, user's full
  # name and product name in AdminPanel. ActiveAdmin
  # uses the `display_name` method in models for its
  # drop-down inputs.
  def display_name
    id.to_s + '. From: ' + user.first_name + ' ' +
      user.last_name + '. On: ' + product.name
  end
end
