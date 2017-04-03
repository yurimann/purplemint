# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all

25.times do
  e = Event.create!(
    name: Faker::Hipster.sentence(3),
    description: Faker::Lorem.sentences,
    date: Time.now.utc - rand(60).days,
    image: Faker::LoremPixel.image("200x200",false, 'food')
  )
end
