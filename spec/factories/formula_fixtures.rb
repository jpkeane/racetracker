FactoryGirl.define do
  factory :formula_fixture do
    fixture
    formula
    sequence(:title) { |n| "Super Meeting #{n}" }
    sequence(:slug) { |n| "super-meeting-#{n}" }
  end
end
