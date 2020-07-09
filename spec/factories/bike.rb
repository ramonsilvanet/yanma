FactoryBot.define do
  factory :bike do
    id { Faker::Number.number(digits: 8) }
    model { Faker::Alphanumeric.alpha(number: 6) }
    status { 'active' }
  end
end
