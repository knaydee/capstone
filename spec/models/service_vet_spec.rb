require 'rails_helper'

RSpec.describe ServiceVet, type: :model do
  describe "validations" do
    it "is valid" do
      expect(create(:service_vet)).to be_valid
    end
    it "is valid with a positive integer" do
      expect(build(:service_vet)).to be_valid
    end
    it "is invalid as 0" do
      expect(build(:service_vet, price: 0)).to be_invalid
    end
    it "is invalid without a price" do
      expect(build(:service_vet, price: nil)).to be_invalid
    end
    it "is invalid with a negative number" do
      expect(build(:service_vet, price: -1)).to be_invalid
    end
  end
end
