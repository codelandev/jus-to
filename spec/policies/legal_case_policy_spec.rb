require 'rails_helper'

RSpec.describe LegalCasePolicy do

  let(:user) { create(:user) }

  subject { described_class }

  permissions :index? do
    context 'when a user tries to access' do
      context 'while having a complete profile' do
        let(:user) { create(:user_with_complete_profile) }

        it "grants access" do
          expect(subject).to permit(user, build(:legal_case, user: user))
        end
      end

      context 'while having an incomplete profile' do
        let(:user) { create(:user) }

        it "denies access" do
          expect(subject).not_to permit(user, build(:legal_case, user: user))
        end
      end
    end

    context 'when an agent tries to access' do
      let(:agent) { create(:agent) }

      it "allows access" do
        expect(subject).not_to permit(user, nil)
      end
    end
  end

  permissions :show? do
    context 'when an agent tries to access' do
      let(:agent) { create(:agent) }

      it "grants access to his case" do
        expect(subject).to permit(agent, build(:legal_case, agent: agent))
      end

      it "denies access to other agent's case" do
        expect(subject).not_to permit(agent, create(:legal_case))
      end
    end

    context 'when an user tries to access' do
      let(:user) { create(:user) }

      it "grants access to his case" do
        expect(subject).to permit(user, build(:legal_case, user: user))
      end

      it "denies access to other user's case" do
        expect(subject).not_to permit(user, create(:legal_case))
      end
    end
  end

  permissions :new?, :create? do
    context 'when an user tries to access' do
      context 'while having a complete profile' do
        let(:user) { create(:user_with_complete_profile) }

        it "grants access" do
          expect(subject).to permit(user, build(:legal_case, user: user))
        end
      end

      context 'while having an incomplete profile' do
        let(:user) { create(:user) }

        it "denies access" do
          expect(subject).not_to permit(user, build(:legal_case, user: user))
        end
      end
    end

    context 'when an agent tries to access' do
      let(:agent) { create(:agent) }

      it "denies access" do
        expect(subject).not_to permit(agent, build(:legal_case))
      end
    end
  end
end
