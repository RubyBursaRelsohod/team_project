require "rails_helper"

RSpec.describe OrdersProduct, type: :model do
  describe "validations" do
    it { should validate_presence_of :order_id }
    it { should validate_presence_of :product_id }
    it { should validate_presence_of :quantity }

    it { should_not allow_value("six").for(:order_id) }
    it { should_not allow_value("four").for(:product_id) }
    it { should_not allow_value("seven").for(:quantity) }
  end

  describe "associations" do
    it { should belong_to :product }
  end
end
