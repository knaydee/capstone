require 'rails_helper'

RSpec.describe UserVet, type: :model do
  describe "validations" do
    it "is valid" do
      expect(create(:user_vet)).to be_valid
    end
  end
end
