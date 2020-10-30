class Seed
    def self.begin
      Park.destroy_all
      seed = Seed.new
      seed.generate_parks
    end

    def generate_parks
      park_type = ['national', 'state']
      20.times do |i|
        park = Park.create!(
          name: Faker::Address.city + " Park",
          type_name: park_type.sample,
          description: Faker::Restaurant.review,
          state_name: Faker::Address.state,
          amenities: Faker::Lorem.words,
          entrance_fee: rand(5...50),
        )
      end
    end

    Seed.begin
  end

    