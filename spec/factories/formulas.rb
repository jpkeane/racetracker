# == Schema Information
#
# Table name: formulas
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  slug         :string           not null
#  short_name   :string           not null
#  promotion_id :integer
#  abbreviation :string           not null
#  contact      :string           not null
#  direction    :string           not null
#  description  :text
#  min_age      :integer
#  max_age      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :formula do
    sequence(:name) { |n| "Formula #{n} Stock Cars" }
    sequence(:slug) { |n| "formula-#{n}" }
    sequence(:short_name) { |n| "Formula #{n}" }
    promotion nil
    sequence(:abbreviation) { |n| "f#{n}sc" }
    contact 'contact'
    direction 'anti-clockwise'
    description ''
    min_age 16
    max_age 65
  end
end
