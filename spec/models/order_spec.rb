require "rails_helper"

RSpec.describe Order, type: :model do
  describe "validations" do
    it { should validate_presence_of :creation_date }
    it { should validate_presence_of :payment_type }
    it { should validate_presence_of :order_status_id }
    it { should validate_presence_of :user_id }
    it { should allow_value("credit card").for(:payment_type) }
    it { should allow_value("ship").for(:delivery_type) }
    it { should allow_value(1).for(:order_status_id) }
    it { should allow_value(1).for(:user_id) }
  end
  describe "associations" do
    it { should have_many :orders_products }
  end
end
