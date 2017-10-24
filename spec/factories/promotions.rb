# == Schema Information
#
# Table name: promotions
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  slug               :string           not null
#  company_name       :string
#  company_number     :string
#  address_ln_1       :string
#  address_ln_2       :string
#  city               :string
#  postcode           :string
#  telephone_main     :string
#  telephone_tickets  :string
#  telephone_bookings :string
#  short_desc         :text
#  long_desc          :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :promotion do
    sequence(:name) { |n| "Promo #{n}" }
    sequence(:company_name) { |n| "Promo #{n} Ltd." }
    address_ln_1 "#{Faker::Address.building_number} #{Faker::Address.street_name}"
    address_ln_2 Faker::Address.community.to_s
    city Faker::Address.city
    postcode Faker::Address.postcode.to_s
    telephone_main Faker::PhoneNumber.phone_number.to_s
    telephone_tickets Faker::PhoneNumber.phone_number.to_s
    telephone_bookings Faker::PhoneNumber.phone_number.to_s
    short_desc 'OvalPromo ST'
    long_desc 'OvalPromo LT'
  end
end
