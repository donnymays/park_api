FactoryBot.define do
  park_type = ['National', 'State']
  factory(:park) do
    name {Faker::Address.city + " Park"}
    park_type {park_type.sample} 
    description {Faker::Restaurant.review} 
    state_name {Faker::Address.state}
    amenities {Faker::Lorem.words}
    entrance_fee {rand(5...50)}
  end
end