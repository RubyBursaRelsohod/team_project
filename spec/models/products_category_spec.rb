# == Schema Information
#
# Table name: products_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe ProductsCategory, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_least(3) }
  end

  describe "associations" do
    it { should have_many :products }
  end
end
