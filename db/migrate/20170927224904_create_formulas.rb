class CreateFormulas < ActiveRecord::Migration[5.1]
  def change
    create_table :formulas do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.string :short_name, null: false
      t.references :promotion, foreign_key: true
      t.string :abbreviation, null: false
      t.string :contact, null: false
      t.string :direction, null: false
      t.text :description
      t.integer :min_age
      t.integer :max_age

      t.timestamps
    end
  end
end
