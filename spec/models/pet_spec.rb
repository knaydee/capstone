require 'rails_helper'

RSpec.describe Pet, type: :model do
  describe "validations" do
    it "is valid" do
      expect(create(:pet)).to be_valid
    end
    it "age is valid with a positive integer" do
      expect(build(:pet)).to be_valid
    end
    it "weight is valid with a positive integer" do
      expect(build(:pet)).to be_valid
    end
    it "age is invalid as 0" do
      expect(build(:pet, age: 0)).to be_invalid
    end
    it "age is invalid with a negative integer" do
      expect(build(:pet, age: -1)).to be_invalid
    end
    it "weight is invalid as 0" do
      expect(build(:pet, age: 0)).to be_invalid
    end
    it "weight is invalid with a negative integer" do
      expect(build(:pet, age: -1)).to be_invalid
    end
    it "is invalid without a name" do
      expect(build(:pet, name: nil)).to be_invalid
    end
    it "is invalid without a breed" do
      expect(build(:pet, breed: nil)).to be_invalid
    end
    it "is invalid without a species" do
      expect(build(:pet, species: nil)).to be_invalid
    end
    it "is invalid without a sex" do
      expect(build(:pet, sex: nil)).to be_invalid
    end
  end
end
