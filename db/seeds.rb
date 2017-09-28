# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Only for testing
FormulaFixtureHeat.destroy_all
FormulaFixture.destroy_all
Formula.destroy_all
Fixture.destroy_all
Track.destroy_all
Promotion.destroy_all

# Populate
Rake::Task['seed:promotions'].invoke
Rake::Task['seed:tracks'].invoke
Rake::Task['seed:fixtures'].invoke
Rake::Task['seed:formulas'].invoke
Rake::Task['seed:formula_fixtures'].invoke
Rake::Task['seed:formula_fixture_heats'].invoke

