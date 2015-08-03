FactoryGirl.define do
  factory :saxophone do
    type ""
    tonality "MyString"
    keys_number 1
    low_key "MyString"
    high_key "MyString"
    bell_diametr 1.5
    bell_engraved false
    body_material "MyString"
  end
end
