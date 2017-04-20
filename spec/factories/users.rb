FactoryGirl.define do
  factory :user do
    name "Sparky"
    email "sparky@gmail.com"
    encrypted_password "thisneedstobeupdated"
    picture_path "http://www.imageme.com.biz.hooray"
    role "a"
  end
end
