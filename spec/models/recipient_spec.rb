require 'rails_helper'

RSpec.describe Recipient, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:user_id) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:message) }
  end
end
