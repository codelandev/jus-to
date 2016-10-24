require 'rails_helper'

RSpec.describe Message, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:legal_case) }
    it { is_expected.to validate_presence_of(:author) }
    it { is_expected.to validate_presence_of(:content) }

    context 'user must be a part of legal case' do
      subject { build(:message, legal_case: legal_case, author: author) }

      context "when author is legal_case's agent" do
        let(:author) { create(:agent) }
        let(:legal_case) { create(:legal_case, agent: author) }

        it { is_expected.to be_valid }
      end

      context "when author is legal_cases's user" do
        let(:author) { create(:user) }
        let(:legal_case) { create(:legal_case, user: author) }

        it { is_expected.to be_valid }
      end

      context "when author is a user unrelated to legal case" do
        let(:author) { create(:user) }
        let(:legal_case) { create(:legal_case) }

        it { is_expected.not_to be_valid }
      end

      context "when author is an agent unrelated to legal case" do
        let(:author) { create(:agent) }
        let(:legal_case) { create(:legal_case) }

        it { is_expected.not_to be_valid }
      end
    end
  end
end
