require "rails_helper"

RSpec.describe Comment, type: :model do
  describe 'validations' do
    it { should validate_presence_of :body }  
    it { should validate_presence_of :user_id }  
    it { should validate_presence_of :product_id }  
    it { should validate_presence_of :created_at }  
    it { should validate_presence_of :updated_at }

    it { should allow_value('Hello guys').for(:body) }
    it { should allow_value(1).for(:user_id) }
    it { should allow_value(2).for(:product_id) }
  
    it { should_not allow_value('@','%','&','#').for(:body) } 
  end

  describe 'associations' do
    it { should belong_to :user}
    it { should belong_to :product}

  end
end
