class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :legal_case, foreign_key: true
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
