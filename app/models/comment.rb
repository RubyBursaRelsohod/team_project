class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :body, presence: true
  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :created_at, presence: true
  validates :updated_at, presence: true

  validates :body, exclusion: { in: %w(@ % & #), 
    message: "%{value} is depricated" }

  validates :body, length: { in: 1..500}
end
