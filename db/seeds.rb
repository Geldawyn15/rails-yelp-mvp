require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = []

10.times do
  phone_number = "#{rand(10..99)} #{rand(10..99)} #{rand(10..99)} #{rand(10..99)}"
  restaurants_attributes << {
    name:         Faker::Restaurant.name,
    address:      Faker::Address.full_address,
    phone_number: phone_number,
    category:     ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  }
end

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
