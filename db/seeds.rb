# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  },
  {
    name:         'Pizza East',
    address:      'Bordeaux',
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  },
  {
    name:         'Eat salad',
    address:      'St Catherine',
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  },
  {
    name:         'Mcdo',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  },
  {
    name:         'Kokomo',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
