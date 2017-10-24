# == Schema Information
#
# Table name: formula_fixtures
#
#  id         :integer          not null, primary key
#  slug       :string           not null
#  fixture_id :integer          not null
#  formula_id :integer          not null
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :formula_fixture do
    fixture
    formula
    sequence(:title) { |n| "Super Meeting #{n}" }
  end
end
