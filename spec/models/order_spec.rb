# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  delivery_date   :datetime
#  creation_date   :datetime
#  payment_type    :string
#  delivery_type   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  order_status_id :integer
#  user_id         :integer
#

require "rails_helper"

RSpec.describe Order, type: :model do
  describe "validations" do
    it { should validate_presence_of :delivery_date }
    it { should validate_presence_of :creation_date }
    it { should validate_presence_of :payment_type }
    it { should validate_presence_of :delivery_type }
    it { should validate_presence_of :order_status_id }
    it { should validate_presence_of :user_id }
    it { should validate_numericality_of :user_id }
    it { should validate_numericality_of :order_status_id }
  end
  describe ".save" do
    it { should allow_value("2015-08-01").for(:delivery_date) }
    it { should allow_value("2015-08-01").for(:creation_date) }
    it { should allow_value("credit card").for(:payment_type) }
    it { should allow_value("ship").for(:delivery_type) }
    it { should allow_value(1).for(:order_status_id) }
    it { should allow_value(1).for(:user_id) }
  end
  describe "fail to .save" do
    it { should_not allow_value(123, "dsa dad").for(:delivery_date) }
    it { should_not allow_value(123, "dsad ads").for(:creation_date) }
    it { should_not allow_value(-1, "dasdas", 0).for(:order_status_id) }
    it { should_not allow_value(-1, "dsadsa", 0).for(:user_id) }
  end
  describe "associations" do
    it { should have_many :orders_products }
    it { should have_many :products }
    it { should belong_to :order_status }
    it { should belong_to :user }
  end
end
