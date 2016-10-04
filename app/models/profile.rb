class Profile < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user, :name, :zip_code, :address_street, :cpf, :rg,
                        :address_number, :address_complement, :address_city,
                        :address_state, :phone_number, :phone_area_code
  #
  validates_uniqueness_of :user_id
end
