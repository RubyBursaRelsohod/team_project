class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :body, presence: true, length: { maximum: 500}
  validates :body, exclusion: { in: %w(@ % & #), 
    message: "%{value} is depricated" }
  validates :user_id, :product_id, presence: true, numericality: 
            { greater_than: 0, only_integer: true }
end
