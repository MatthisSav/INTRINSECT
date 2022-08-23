# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Insect.destroy_all
User.destroy_all

puts 'Creating 3 fake users...'
user1 = User.new(email: "test@test.com", password: "123456")
user1.save!
user2 = User.new(email: "kikoo@skyrock.com", password: "234567")
user2.save!
user3 = User.new(email: "jean.eude@yahoo.com", password: "345678")
user3.save!
puts 'Finished!'

puts 'Creating 50 fake insect...'
50.times do
  insect = Insect.new(
    name: Faker::Creature::Animal.name,
    description: Faker::Quote.matz,
    order: Insect::TYPES.sample,
    user: User.all.sample
  )
  insect.save!
end
puts 'Finished!'
