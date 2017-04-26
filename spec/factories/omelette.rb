FactoryGirl.define do
  factory :omelette do
    title "Super Omelette"
    description "Super yummy omelette."
    ingredients ["ham", "cheese", "onion"]

    reg_user
  end
end
