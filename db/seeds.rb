puts("Cleaning...")

Restaurant.destroy_all

puts("adding new restaurants...")

100.times do
  resto = Restaurant.new{
    resto = Restaurant.create!(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
  }
end

puts("Done!!")
