# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all


Project.create!(
    name: 'Code With Us',
    aim: "A website that helps coders to connect and to create projects using different technologies",
    category: 'Project',
    user_id: 5
)
Project.create!(
    name: 'Short Cuts',
    aim: "A website that helps our customers find the nearest and cheapest place to get their hair cut",
    category: 'Design',
    user_id: 6
)
Project.create!(
    name: 'Game On',
    aim: "A website that allows users to find games to rent from fellow gamers",
    category: 'Hobbie',
    user_id: 7
)

puts "seeding complete"
