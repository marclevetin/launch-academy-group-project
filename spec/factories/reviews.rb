FactoryGirl.define do
  factory :review do
    body "Bacon ipsum dolor emit sausage pork roast shoulder BBQ"
    rating "3"
    image_path "http://itsanimage.com/JPG.png"

    reg_user
  end
end
