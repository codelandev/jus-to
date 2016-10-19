FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "user#{n}@factory.com"
    end
    password '123123123'

    factory :user_with_complete_profile do
      after(:create) do |user|
        user.profile.destroy!
        create(:profile, user: user)
      end
    end
  end
end
