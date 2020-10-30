FactoryBot.define do
  factory(:park) do
    name {Faker::Address.city + " Park"}
    type_name {park_type.sample} 
    description {Faker::Restaurant.review} 
    state_name {Faker::Address.state}
    amenities {Faker::Lorem.words}
    entrance_fee {rand(5...50)}
  end
end