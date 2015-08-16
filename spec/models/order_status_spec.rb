# == Schema Information
#
# Table name: order_statuses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe OrderStatus, type: :model do
  describe "validations" do
    it {should validate_presence_of :name }
    it {should allow_value("Testste").for(:name) }
  end
end
