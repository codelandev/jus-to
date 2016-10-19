require 'rails_helper'

RSpec.describe User, type: :model do
  it_behaves_like "a user"

  describe 'factory' do
    it "is a valid user" do
      expect(build(:user)).to be_valid
    end

    context 'user_with_complete_profile' do
      it "has a valid profile" do
        expect(create(:user_with_complete_profile).profile).to be_valid
      end
    end
  end
end
