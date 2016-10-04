class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.string :name
      t.string :zip_code
      t.string :address_street
      t.string :address_number
      t.string :address_complement
      t.string :address_city
      t.string :address_state
      t.string :cpf
      t.string :rg
      t.string :phone_number
      t.string :phone_area_code
      t.string :alternative_phone_number
      t.string :alternative_phone_area_code

      t.timestamps null: false
    end
  end
end
