# == Schema Information
#
# Table name: products_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductsCategory < ActiveRecord::Base
  has_many :products

  validates :name, presence: true, length: { minimum: 3 }
end
