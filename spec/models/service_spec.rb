require 'rails_helper'

RSpec.describe Service, type: :model do
  describe "validations" do
    it "is valid" do
      expect(create(:service)).to be_valid
    end
    it "is invalid without a name" do
      expect(build(:service, name: nil)).to be_invalid
    end
  end
end
