class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :body, presence: true, length: { maximum: 500}
  validates :user_id, :product_id, presence: true, numericality: 
            { greater_than: 0, only_integer: true }
  validates_associated :user
  validates_associated :product
end
