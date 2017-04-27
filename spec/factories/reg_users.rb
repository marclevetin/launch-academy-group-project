FactoryGirl.define do
  factory :reg_user do
    first_name "Sparky"
    last_name "The Yolker"
    email "sparky@gmail.com"
    password "password"
    role "member"
  end
end
