FactoryGirl.define do
  factory :user do
    first_name "Name"
    last_name "Surname"
    password "pw"
    sequence(:email) { |n| "email#{n}@gmail.com" }
    phone "111-11-11"
    address "no address"
  end
end
