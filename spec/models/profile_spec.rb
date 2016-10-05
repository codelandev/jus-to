require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:user_id) }

    it { is_expected.to validate_presence_of(:user) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:address_zip_code) }
    it { is_expected.to validate_presence_of(:address_street) }
    it { is_expected.to validate_presence_of(:address_number) }
    it { is_expected.to validate_presence_of(:address_complement) }
    it { is_expected.to validate_presence_of(:address_city) }
    it { is_expected.to validate_presence_of(:address_state) }
    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_presence_of(:rg) }
    it { is_expected.to validate_presence_of(:phone_number) }
    it { is_expected.to validate_presence_of(:phone_area_code) }
  end
end
