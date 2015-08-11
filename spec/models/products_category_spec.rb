require "rails_helper"

RSpec.describe ProductsCategory, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe 'validations' do
    # it { should validate_presence_of :product_id }
    it { should validate_presence_of :name }
  end

  describe 'associations' do
    it { should have_many :products}
  end
end
