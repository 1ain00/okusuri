FactoryBot.define do
  factory :medicine do
    name { Faker::Coffee.blend_name }
    image {Faker::Lorem.sentence}
    number{ '5' }
    start_time{ Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default) }

  end
end
