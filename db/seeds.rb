# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Story.destroy_all

5.times {
  s = Story.create(name: Faker::Games::Witcher.character, text: Faker::Games::Witcher.location)
  3.times {
    c = Comment.create(name: Faker::Games::Witcher.witcher, content: Faker::Games::Witcher.quote, story: s)
  }
}
