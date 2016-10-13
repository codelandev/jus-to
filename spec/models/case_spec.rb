require 'rails_helper'

RSpec.describe LegalCase, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :user }
    it { is_expected.to validate_presence_of :company }
    it { is_expected.to validate_presence_of :subject }
  end

  describe 'factory' do
    it { expect(build(:legal_case)).to be_valid }
  end
end
