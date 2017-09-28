class CreateFormulaFixtureHeats < ActiveRecord::Migration[5.1]
  def change
    create_table :formula_fixture_heats do |t|
      t.integer :heat_number, null: false
      t.integer :race_number, null: false
      t.string :slug, null: false
      t.references :formula_fixture, foreign_key: true, null: false
      t.string :title
      t.string :race_type, null: false

      t.timestamps
    end
  end
end
