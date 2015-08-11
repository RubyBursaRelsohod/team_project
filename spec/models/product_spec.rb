require "rails_helper"

RSpec.describe Product, type: :model do

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :products_category_id }
    it { should validate_presence_of :quantity }
    it { should allow_value("2").for(:products_category_id) }
    it { should_not allow_value("text").for(:products_category_id) }
    it { should allow_value("0").for(:quantity) }
    it { should_not allow_value("text").for(:quantity) }
    it { should allow_value("10.11").for(:price) }
    it { should_not allow_value("text").for(:price) }
  end

  describe 'associations' do
    it { should have_many :comments }
    it { should have_many :orders_products }
    it { should belong_to :products_category }
    it { should have_one :guitar }
    it { should have_one :saxophone }
    it { should have_one :piano }
    it { should have_one :violin }
  end
end
