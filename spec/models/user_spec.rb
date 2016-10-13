require 'rails_helper'

RSpec.describe User, type: :model do
  it_behaves_like "a user"

  describe 'factory' do
    it { expect(build(:user)).to be_valid }
  end
end
