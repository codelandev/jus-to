class CreateLegalCases < ActiveRecord::Migration
  def change
    create_table :legal_cases do |t|
      t.references :user, index: true, foreign_key: true
      t.string :company
      t.text :subject
      t.text :description

      t.timestamps null: false
    end
  end
end
