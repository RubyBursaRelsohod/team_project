require "rails_helper"

RSpec.describe Saxophone, type: :model do

  describe "validations" do
    it { should validate_presence_of :product_id }
    it { should validate_presence_of :type }
    it { should validate_presence_of :tonality }
    it { should validate_presence_of :bell_diametr }
    it { should validate_presence_of :low_key }
    it { should validate_presence_of :high_key }

    it { should validate_numericality_of :product_id }

    it { should allow_value("10.11").for(:bell_diametr) }
    it { should_not allow_value("green").for(:bell_diametr) }
    it { should_not allow_value("10.11").for(:product_id) }
  end

  describe "associations" do
    it { should belong_to :product }
  end
end
