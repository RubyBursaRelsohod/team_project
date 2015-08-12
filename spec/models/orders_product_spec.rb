require "rails_helper"

RSpec.describe OrdersProduct, type: :model do
  describe "validations" do
    it { should validate_presence_of :order_id }
    it { should validate_presence_of :product_id }
    it { should validate_presence_of :quantity }
    it { should validate_numericality_of :order_id }
    it { should validate_numericality_of :product_id }
    it { should validate_numericality_of :quantity }
  end
  describe ".save" do
    it { should allow_value(1).for(:order_id) }
    it { should allow_value(2).for(:product_id) }
    it { should allow_value(3).for(:quantity) }
  end
  describe "fail to .save" do
    it { should_not allow_value(-1, 0, "six").for(:order_id) }
    it { should_not allow_value(-1, 0, "eight").for(:product_id) }
    it { should_not allow_value(-1, 0, "seven").for(:quantity) }
  end
  describe "associations" do
    it { should belong_to :product }
    it { should belong_to :order }
  end
end
