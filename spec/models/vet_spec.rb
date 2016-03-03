require 'rails_helper'

RSpec.describe Vet, type: :model do
  describe Vet do
    describe "validations" do
      it "is valid" do
        expect(create(:vet)).to be_valid
      end
      it "is invalid without a name" do
        expect(build(:vet, name: nil)).to be_invalid
      end
    end
  end
end
