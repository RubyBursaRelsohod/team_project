require "rails_helper"

RSpec.describe Guitar, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'validations' do
    it { should validate_presence_of :frets }
    it { should validate_presence_of :chords }
    it { should validate_presence_of :dimensions }
    it { should validate_presence_of :weight }
    it { should validate_presence_of :is_digital }
    it { should validate_presence_of :product_id }

    it {should allow_value(22).for(:frets) }
    it {should allow_value(6).for(:chords) }
    it {should allow_value(49.5).for(:dimensions) }
    it {should allow_value(7).for(:weight) }
    it {should allow_value('true').for(:is_digital) }
    it {should allow_value(2).for(:product_id) }  
  end

  describe 'associations' do
    it { should belong_to :product}
  end
  
end
