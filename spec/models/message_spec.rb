require 'rails_helper'

RSpec.describe Message, type: :model do
  describe 'validations' do
    it 'has a valid factory' do
      expect(build(:message)).to be_valid
    end
    it { should validate_presence_of(:sender_id) }
    it { should validate_presence_of(:body) }
  end

  describe 'associations' do
    it { should belong_to(:sender).class_name('User') }
    it { should have_many :recipients }
    it { should have_many(:users).through(:recipients) }
  end
end
