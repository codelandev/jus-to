require "administrate/base_dashboard"

class ProfileDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    address_zip_code: Field::String,
    address_street: Field::String,
    address_number: Field::String,
    address_complement: Field::String,
    address_city: Field::String,
    address_state: Field::String,
    cpf: Field::String,
    rg: Field::String,
    phone_number: Field::String,
    phone_area_code: Field::String,
    alternative_phone_number: Field::String,
    alternative_phone_area_code: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :name,
    :address_zip_code,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :name,
    :address_zip_code,
    :address_street,
    :address_number,
    :address_complement,
    :address_city,
    :address_state,
    :cpf,
    :rg,
    :phone_number,
    :phone_area_code,
    :alternative_phone_number,
    :alternative_phone_area_code,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :name,
    :address_zip_code,
    :address_street,
    :address_number,
    :address_complement,
    :address_city,
    :address_state,
    :cpf,
    :rg,
    :phone_number,
    :phone_area_code,
    :alternative_phone_number,
    :alternative_phone_area_code,
  ].freeze

  # Overwrite this method to customize how profiles are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(profile)
  #   "Profile ##{profile.id}"
  # end
end
