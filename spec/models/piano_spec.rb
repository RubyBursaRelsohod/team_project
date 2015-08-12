require "rails_helper"

RSpec.describe Piano, type: :model do
  describe "validations" do
    it { should validate_presence_of :color }
    it { should validate_presence_of :keys_number }
    it { should validate_presence_of :is_digital }
    it { should validate_presence_of :product_id }
    it { should validate_numericality_of :keys_number }
    it { should validate_numericality_of :product_id }
  end 
  describe ".save" do
    it { should allow_value("green").for(:color) }
    it { should allow_value(1).for(:keys_number) }
    it { should allow_value(1).for(:product_id) }
  end
  describe "fail to .save" do
    it { should_not allow_value(0, "52").for(:color) }
    it { should_not allow_value(-1, 0, "dsd").for(:keys_number) }
    it { should_not allow_value(-1, 0, "dsd").for(:product_id) }
  end
  describe "associations" do
    it { should belong_to :product }
  end
end
