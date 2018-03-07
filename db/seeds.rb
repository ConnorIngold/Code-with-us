# require 'faker'
# require 'open-uri'


# Technology.destroy_all


# puts 'Seeding tech...'
# 10.times do
#   tech = Technology.new(name: Faker::ProgrammingLanguage.name)

#   tech.save
# end

# ruby = Technology.new(name: 'Ruby')
# ruby.save
# html = Technology.new(name: 'HTML')
# html.save
# css = Technology.new(name:'CSS')
# css.save
# js = Technology.new(name: 'JS')
# js.save
# puts 'Tech Seeded boi'

# Project.destroy_all

Technology.create!(
  name: 'Ruby',
  photo: 'ruby.png'
)
Technology.create!(
  name: 'HTML',
  photo: 'html.png'
)
Technology.create!(
  name: 'CSS'
  photo:
)
Technology.create!(
  name: 'Javascript'
  photo:
)
Technology.create!(
  name: 'Ruby on Rails'
  photo:
)
Technology.create!(
  name: 'React'
  photo:
)
Technology.create!(
  name: 'SQL'
  photo:
)
Technology.create!(
  name: 'Python'
  photo:
)
Technology.create!(
  name: 'C#'
  photo:
)
Technology.create!(
  name: 'PHP'
  photo:
)
Technology.create!(
  name: 'Objective-C'
  photo:
)
Technology.create!(
  name: 'Java'
  photo:
)
Technology.create!(
  name: 'Pearl'
  photo:
)
Technology.create!(
  name: 'C++'
  photo:
)
Technology.create!(
  name: 'Scala'
  photo:
)
Technology.create!(
  name: 'Shell'
  photo:
)
Technology.create!(
  name: 'Swift'
  photo:
)
Technology.create!(
  name: 'Typescript'
  photo:
)
Technology.create!(
  name: 'Django'
  photo:
)

puts "Tech seeding complete boi"


sumai = User.create!(
  email: "sumaikhayat@gmail.com",
  full_name: "Sumai",
  password: "123456",
  git_hub: "SumaiK"
  )


alex = User.create!(
  email: "alex.s-a@hotmail.com",
  full_name: "Alex",
  password: "123456",
  git_hub: "AlexS-a"
  )


sam = User.create!(
  email: "1516828@brunel.ac.uk",
  full_name: "Sam",
  password: "123456",
  git_hub: "SamTy234"
  )

Project.create!(
    name: 'Code With Us',
    aim: "A website that helps coders to connect and to create projects using different technologies",
    category: 'Project',
    user_id: 1
)
Project.create!(
    name: 'Short Cuts',
    aim: "A website that helps our customers find the nearest and cheapest place to get their hair cut",
    category: 'Design',
    user_id: 2
)
Project.create!(
    name: 'Game On',
    aim: "A website that allows users to find games to rent from fellow gamers",
    category: 'Hobbie',
    user_id: 3
)


puts "User and Project seeding complete boi"

