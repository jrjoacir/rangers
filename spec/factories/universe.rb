FactoryBot.define do
  to_create(&:save)

  factory :universe, class: Models::Universe do
    name { 'Universe' }
    description { 'Description' }
  end
end
