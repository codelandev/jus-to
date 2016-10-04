require 'rails_helper'

RSpec.describe ProfileController, type: :controller do
  let(:user) { create(:user) }

  describe "GET #edit" do
    subject { get :edit }

    context 'when user is signed in' do
      before do
        sign_in user
      end

      it { is_expected.to have_http_status(:success) }
    end

    context 'when user is not signed in' do
      it 'redirect to sign in page' do
        is_expected.to have_http_status(302)
      end
    end
  end

  describe "PATCH #update" do
    subject { patch :update, profile: profile_params }

    context 'when sending address info' do
      before do
        sign_in user
      end

      let(:profile_params) { { address_street: 'Some Street',
                               address_number: '1010',
                               address_zip_code: '90440150' } }

      it "updates the user's profile's address street" do
        expect{subject}.to change{ user.reload; user.profile.address_street }.to('Some Street')
      end

      it "updates the user's profile's address number" do
        expect{subject}.to change{ user.reload; user.profile.address_number }.to('1010')
      end

      it "updates the user's profile's address zip code" do
        expect{subject}.to change{ user.reload; user.profile.address_zip_code }.to('90440150')
      end
    end
  end
end
