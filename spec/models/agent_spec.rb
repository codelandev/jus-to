require 'rails_helper'

RSpec.describe Agent, type: :model do
  it_behaves_like "a user"

  describe 'factory' do
    it { expect(build(:agent)).to be_valid }
  end
end
