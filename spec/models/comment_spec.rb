# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  product_id :integer
#

require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "validations" do
    it { should validate_presence_of :body }
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :product_id }
    it { should validate_numericality_of :user_id }
    it { should validate_numericality_of :product_id }
  end
  describe ".save" do
    it { should allow_value("Hello guys").for(:body) }
    it { should allow_value(1).for(:user_id) }
    it { should allow_value(2).for(:product_id) }
  end
  describe "fail to .save" do
    it { should_not allow_value(0, -1, "dasd", 1.2).for(:user_id) }
    it { should_not allow_value(0, -1, "dasd", 2.2).for(:product_id) }
  end
  describe "associations" do
    it { should belong_to :user}
    it { should belong_to :product}
  end
end
