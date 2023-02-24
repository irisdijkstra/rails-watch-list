# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'faker'

3.times do
  Movie.create!(title: Faker::Movie.unique.title, overview: Faker::Movie.unique.quote, rating: rand(1..10))
end

3.times do
  List.create!(name: Faker::Movie.unique.quote)
end
