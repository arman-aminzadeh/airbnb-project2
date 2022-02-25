# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all
User.destroy_all
puts "Database cleared"

puts "Seeding"
sleep 1
puts "Creating flats"
User.create!(email: "arman@yahoo.com", password: "123456")
first_flat = Flat.create!(
  title: "Cozy newly renovated apartment in Stockholm",
  address: "Enskede-Årsta-Vantör, Stockholms län, Sverige",
  area: 50,
  price_per_day: 700,
  description: "Close to the city center and you have tram, train and bus station close by to go around.
  All home appliances are new:
  - Dishwasher
  - Big LG fridge and freezer
  - Stove and oven
  - Microwave
  - TV
  A big couch (sofa bed) and a super fast WiFi (measured in different spots of the apartment).
  Want to know more about good places to dine or drink coffee? Ask us!",
  user_id: User.last.id
  )
first_flat.photo.attach(io: File.open('app/assets/images/flat-1/1.jpg'), filename: '1.jpg')

puts "flat created"
