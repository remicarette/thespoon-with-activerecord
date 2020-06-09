# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Avant d'executer mes seeds
# je clean ma base de données

puts '===== Destroy all restaurants'

Restaurant.destroy_all

puts 'Create restaurants ...'

# Restaurant.create(name: 'La Famille', address: '4 rue de Lille à Lomme', rating: 4)
# Restaurant.create(name: 'So Good', address: '2 rue de Lille à Lomme', rating: 3)
# Restaurant.create(name: 'Pick it up', address: '1 rue de Lille à Lomme', rating: 2)

100.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, rating: rand(1..5))
end

puts "... #{Restaurant.count} restaurants created"
