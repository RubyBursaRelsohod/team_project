require "rails_helper"

RSpec.describe Violin, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe "validations" do
    it { should validate_presence_of :color }
    it { should validate_presence_of :bow_included }
    it { should validate_presence_of :body_material }
    it { should validate_presence_of :string_count }
    it { should validate_presence_of :size }
    it { should validate_presence_of :weight }
    it { should validate_presence_of :product_id }

    it { should validate_numericality_of :string_count }
    it { should validate_numericality_of :weight }
    it { should validate_numericality_of :product_id }

    it { should allow_value("brown").for(:color) }
    it { should allow_value("7/8").for(:size)}

    it { should_not allow_value(11).for(:bow_included)}
    it { should_not allow_value("aa").for(:bow_included)}
    it { should_not allow_value("bbb").for(:string_count) }
    it { should_not allow_value("cccaa").for(:weight) }
  end

  describe "associations" do
    it { should belong_to :product}
  end
end
