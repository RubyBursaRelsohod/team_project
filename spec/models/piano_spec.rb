require "rails_helper"

RSpec.describe Piano, type: :model do
  describe "validations" do
    it { should validate_presence_of :color }
    it { should validate_presence_of :keys_number }
    it { should validate_presence_of :is_digital }

    it { should validate_numericality_of :keys_number }

    it { should allow_value('green').for(:color) }
    it { should_not allow_value('52').for(:color) }
  end

  describe "associations" do
    it { should belong_to :product }
  end
end
