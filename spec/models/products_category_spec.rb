require "rails_helper"

RSpec.describe ProductsCategory, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe "associations" do
    it { should have_many :products }
  end
end
