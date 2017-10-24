# == Schema Information
#
# Table name: formula_fixture_heats
#
#  id                 :integer          not null, primary key
#  heat_number        :integer          not null
#  race_number        :integer          not null
#  slug               :string           not null
#  formula_fixture_id :integer          not null
#  title              :string
#  race_type          :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :formula_fixture_heat do
    formula_fixture
    sequence(:heat_number) { |n| n }
    sequence(:race_number) { |n| n }

    title 'SuperRace!'
    race_type 'normal'
  end
end
