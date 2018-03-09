# require 'faker'
# require 'open-uri'

# TechProject.destroy_all
# ProjectInvite.destroy_all
# Technology.destroy_all
# Project.destroy_all
# User.destroy_all




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

# Technology.destroy_all
puts "Starting seed for you, hold tight ...."

Technology.create!(
  name: 'Ruby',
  photo: 'ruby.png'
)
Technology.create!(
  name: 'HTML',
  photo: 'html.png'
)
Technology.create!(
  name: 'CSS',
  photo: 'css.png'
)
Technology.create!(
  name: 'JS',
  photo: 'js.png'
)
Technology.create!(
  name: 'Rails',
  photo: 'rails.png'
)
Technology.create!(
  name: 'React',
  photo: 'react.png'
)
Technology.create!(
  name: 'SQL',
  photo: 'sql.png',
)
Technology.create!(
  name: 'Python',
  photo: 'python.png'
)
Technology.create!(
  name: 'C#',
  photo: 'c#.png'
)
Technology.create!(
  name: 'Typescript',
  photo: 'typescript.png'
)
Technology.create!(
  name: 'PHP',
  photo: 'php.png'
)
Technology.create!(
  name: 'Perl',
  photo: 'perl.png'
)
Technology.create!(
  name: 'Java',
  photo: 'java.png'
)
Technology.create!(
  name: 'Angular',
  photo: 'angular.png'
)
Technology.create!(
  name: 'C++',
  photo: 'c++.png'
)
Technology.create!(
  name: 'Scala',
  photo: 'scala.png'
)
Technology.create!(
  name: 'Jquery',
  photo: 'jquery.png'
)
Technology.create!(
  name: 'Swift',
  photo: 'swift.png'
)
Technology.create!(
  name: 'Typescript',
  photo: 'typescript.png'
)
Technology.create!(
  name: 'Django',
  photo: 'django.png'
)
Technology.create!(
  name: 'Net-framework',
  photo: 'Net-framework.png'
)

puts "Tech seeding complete my g"


# sumai = User.create!(
#   email: "sumaikhayat@gmail.com",
#   full_name: "Sumai",
#   password: "123456",
#   user_name: "SumaiK"
#   )

# alex = User.create!(
#   email: "alex.s-a@hotmail.com",
#   full_name: "Alex",
#   password: "123456",
#   user_name: "AlexS-a"
#   )

# connor = User.create!(
#   email: "connoringold@gmail.com",
#   full_name: "Connor",
#   password: "123456",
#   user_name: "killercarwash"
#   )

# Project.create!(
#     name: 'Code With Us',
#     aim: "A website that helps coders to connect and to create projects using different technologies",
#     category: 'Project',
#     user_id: sumai.id,
# )
# Project.create!(
#     name: 'Short Cuts',
#     aim: "A website that helps our customers find the nearest and cheapest place to get their hair cut",
#     category: 'Design',
#     user_id: alex.id,
# )

# Project.create!(
#     name: 'My Portfolio',
#     aim: "A website that allows me to manage my professional portfolio",
#     category: 'Learning',
#     user_id: connor.id,
# )


puts "User and Project seeding complete boi"


