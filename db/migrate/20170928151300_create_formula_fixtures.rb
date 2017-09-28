class CreateFormulaFixtures < ActiveRecord::Migration[5.1]
  def change
    create_table :formula_fixtures do |t|
      t.string :slug, null: false
      t.references :fixture, foreign_key: true, null: false
      t.references :formula, foreign_key: true, null: false
      t.string :title

      t.timestamps
    end
  end
end
