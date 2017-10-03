FactoryGirl.define do
  factory :staff do
    email { Faker::Internet.email }
    password 'password'
    password_confirmation 'password'
  end
end
