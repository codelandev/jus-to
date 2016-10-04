FactoryGirl.define do
  factory :profile do
    user
    name 'Name'
    address_zip_code '90440-150'
    address_street 'Rua Felipe Neri'
    address_number '128'
    address_complement 'sala 201'
    address_city 'Porto Alegre'
    address_state 'RS'
    cpf '12345678910'
    rg '1234567890'
    phone_number '987654321'
    phone_area_code '51'
    alternative_phone_number '123456789'
    alternative_phone_area_code '51'
  end
end
