require "rails_helper"

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :password }
    it { should validate_presence_of :email }
    it { should validate_presence_of :phone }
    it { should validate_presence_of :address }
    it { should allow_value("John").for(:first_name) }
    it { should_not allow_value("jOhn").for(:first_name) }
    it { should allow_value("Smith").for(:last_name) }
    it { should_not allow_value("sMith").for(:last_name) }
    it { should allow_value("JS@example.com").for(:email) }
    it { should_not allow_value("example.com").for(:email) }
  end
  describe "associations" do
    it { should have_many :comments }
  end
end
