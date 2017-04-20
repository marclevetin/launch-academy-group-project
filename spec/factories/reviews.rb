FactoryGirl.define do
  factory :review do
    title "Review"
    body "Bacon ipsum dolor emit sausage pork roast shoulder BBQ"
    image_path "http://itsanimage.com/JPG.png"

    user
  end
end
