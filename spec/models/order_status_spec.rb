require "rails_helper"

RSpec.describe OrderStatus, type: :model do
  describe "validations" do
    it {should validate_presence_of :name }
    it {should allow_value("Testste").for(:name) }
  end
  describe "associations" do
    it { should have_many :orders }
  end
end
