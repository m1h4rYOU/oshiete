FactoryBot.define do
  factory :recipe do
    dish_name { 'あいうえお' }
    genre_id { Faker::Number.between(from: 2, to: 4) }
    ingredient { 'あいうえお' }
    detail { 'あいうえお' }
    user
  end
end
