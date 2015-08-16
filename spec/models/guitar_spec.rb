# == Schema Information
#
# Table name: guitars
#
#  id         :integer          not null, primary key
#  frets      :integer
#  chords     :integer
#  dimensions :float
#  weight     :integer
#  is_digital :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer
#

require "rails_helper"

RSpec.describe Guitar, type: :model do
  describe "validations" do
    it { should validate_presence_of :frets }
    it { should validate_presence_of :chords }
    it { should validate_presence_of :dimensions }
    it { should validate_presence_of :weight }
    it { should validate_presence_of :is_digital }
    it { should validate_presence_of :product_id }
    it { should validate_numericality_of :product_id }
    it { should validate_numericality_of :frets }
    it { should validate_numericality_of :chords }
    it { should validate_numericality_of :weight }
    it { should validate_numericality_of :dimensions }
  end
  describe ".save" do
    it { should allow_value(22).for(:frets) }
    it { should allow_value(6).for(:chords) }
    it { should allow_value(49.5).for(:dimensions) }
    it { should allow_value(7).for(:weight) }
    it { should allow_value("true").for(:is_digital) }
    it { should allow_value(2).for(:product_id) } 
  end
  describe "fail to .save" do
    it { should_not allow_value(0, -1, 2.2, "gyhvg").for(:frets) }
    it { should_not allow_value(0, -1, 2.2, "gyhvg").for(:chords) }
    it { should_not allow_value(0, -1, 2.2, "gyhvg").for(:weight) }
    it { should_not allow_value(0, -1, 2.2, "gyhvg").for(:product_id) }
    it { should_not allow_value(-49.5, 0, "bhjg").for(:dimensions) }
  end
  describe "associations" do
    it { should belong_to :product}
  end
  
end
