FactoryGirl.define do
  factory :promotion do
    name 'OvalPromo'
    slug 'oval-promo'
    company_name 'Oval Promotions Ltd.'
    address_ln_1 '1 Oval lane'
    address_ln_2 'Ovalville'
    postcode 'OV11 1JV'
    telephone_main '01213332222'
    telephone_tickets '01213332221'
    telephone_bookings '01213332220'
    short_desc 'OvalPromo ST'
    long_desc 'OvalPromo LT'
  end
end
