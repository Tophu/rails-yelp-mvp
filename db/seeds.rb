# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '07400723465',
    category: 'chinese'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '07400234333',
    category: 'italian'
  },
  {
    name: 'Five Guys',
    address: '56A Trafalgar High St, London E1 6PQ',
    phone_number: '07409995555',
    category: 'japanese'
  },
  {
    name: 'Pizza buddy',
    address: '56A High St, Liverpool E1 6PQ',
    phone_number: '07400234444',
    category: 'french'
  },
  {
    name: 'Steak house',
    address: '36 Harn road, Peterborough PE7 8GH',
    phone_number: '07400230000',
    category: 'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
