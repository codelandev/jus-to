FactoryGirl.define do
  factory :agent do
    sequence :email do |n|
      "agent#{n}@factory.com"
    end
    password '123123123'
  end
end
