# == Schema Information
#
# Table name: tracks
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  slug               :string           not null
#  promotion_id       :integer
#  address_ln_1       :string
#  address_ln_2       :string
#  city               :string
#  postcode           :string
#  telephone_office   :string
#  telephone_tickets  :string
#  telephone_bookings :string
#  surface            :string
#  length             :float
#  length_unit        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :track do
    sequence(:name) { |n| "Track #{n}" }
    sequence(:slug) { |n| "track-#{n}" }
    promotion
    address_ln_1 "#{Faker::Address.building_number} #{Faker::Address.street_name}"
    address_ln_2 Faker::Address.community.to_s
    city Faker::Address.city
    postcode Faker::Address.postcode.to_s
    telephone_office Faker::PhoneNumber.phone_number.to_s
    telephone_tickets Faker::PhoneNumber.phone_number.to_s
    telephone_bookings Faker::PhoneNumber.phone_number.to_s
    surface 'Tarmac'
    length 400
    length_unit 'm'
  end
end
