
require 'faker'
require 'open-uri'


# Technology.destroy_all


puts 'Seeding tech...'
10.times do
  tech = Technology.new(name: Faker::ProgrammingLanguage.name)

  tech.save
end

ruby = Technology.new(name: 'Ruby')
ruby.save
html = Technology.new(name: 'HTML')
html.save
css = Technology.new(name:'CSS')
css.save
js = Technology.new(name: 'JS')
js.save
puts 'Tech Seeded boi'

# Project.destroy_all


# Project.create!(
#     name: 'Code With Us',
#     aim: "A website that helps coders to connect and to create projects using different technologies",
#     category: 'Project',
#     user_id: 5
# )
# Project.create!(
#     name: 'Short Cuts',
#     aim: "A website that helps our customers find the nearest and cheapest place to get their hair cut",
#     category: 'Design',
#     user_id: 6
# )
# Project.create!(
#     name: 'Game On',
#     aim: "A website that allows users to find games to rent from fellow gamers",
#     category: 'Hobbie',
#     user_id: 7
# )

puts "seeding complete"

