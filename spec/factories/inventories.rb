# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inventory do
    title "Spam"
    description "Fake meat"
    quantity 5
  end
end
