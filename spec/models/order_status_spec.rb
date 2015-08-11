require "rails_helper"

RSpec.describe OrderStatus, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

    # t.string :names
    #   add_reference :orders, :order_status, index: true, foreign_key: true
    #
    describe 'validations' do
    it {should validate_presence_of :names }
    it {should allow_value("Testste").for(:names) }
    end

    describe 'associations' do
      it { should have_one :orders}
    end
end
