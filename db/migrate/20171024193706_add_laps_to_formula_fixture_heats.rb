class AddLapsToFormulaFixtureHeats < ActiveRecord::Migration[5.1]
  def change
    add_column :formula_fixture_heats, :laps, :integer, null: false, default: 12
  end
end
