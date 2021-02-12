# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kingdoms = Kingdom.create([
  {
    name: "France",
    color: "blue",
    user_id:nil,
  },
  {
    name: "Turkey",
    color: "lightblue",
    user_id:nil,
  },
  {
    name: "Spain",
    color: "orange",
    user_id:nil,
  },
  {
    name: "Egypt",
    color: "yellow",
    user_id:nil,
  }
])

citys = City.create([
  {
    name: "Alexanderia",
    population: 50000,
    kingdom_id:nil,
  },
  {
    name: "Madrid",
    population: 50000,
    kingdom_id:nil,
  },
  {
    name: "Paris",
    population: 50000,
    kingdom_id:nil,
  },
  {
    name: "Rome",
    population: 50000,
    kingdom_id:nil,
  }
])