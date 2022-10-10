FactoryBot.define do
  factory :medicinelist do
    name { Faker::Coffee.blend_name }
    number { '5' }
    timing_id { 3 }
    memo { Faker::Lorem.sentence }
  end
end
