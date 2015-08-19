# == Schema Information
#
# Table name: products
#
#  id                   :integer          not null, primary key
#  name                 :string
#  price                :float
#  country              :string
#  company              :string
#  quantity             :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  products_category_id :integer
#

class Product < ActiveRecord::Base
  has_one :guitar
  has_one :saxophone
  has_one :piano
  has_many :comments
  belongs_to :products_category
  has_many :orders_products
  has_many :products_photos
  has_one :violin

  validates_associated :comments, :orders_products
  validates :products_category_id, presence: true,
                                   numericality: { greater_than: 0,
                                                   only_integer: true }
  validates :quantity, presence: true,
                       numericality: { greater_than_or_equal_to: 0,
                                       only_integer: true }
  validates :name, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ },
                    numericality: { greater_than_or_equal_to: 0 }

  # Scope for getting all the instruments of
  # specific category
  scope :every, ->(instrument) {
    where(products_category: (ProductsCategory.where(name: instrument)).first)
  }

end
