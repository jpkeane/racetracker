# == Schema Information
#
# Table name: fixtures
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  slug       :string           not null
#  track_id   :integer          not null
#  start_time :datetime         not null
#  short_desc :text
#  long_desc  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :fixture do
    sequence(:name) { |n| "Event #{n}" }
    track
    start_time { Faker::Date.between(Time.zone.today, 6.months.since) }
    short_desc 'Short description'
    long_desc 'Long description'
  end
end
