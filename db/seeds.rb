# require 'faker'
# require 'open-uri'

TechProject.destroy_all
ProjectInvite.destroy_all
Technology.destroy_all
Project.destroy_all
User.destroy_all




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

)
Technology.create!(
  name: 'SQL',

)
Technology.create!(
  name: 'Python',

)
Technology.create!(
  name: 'C#',
 }
Technology.create!(
  name: 'PHP',
)
Technology.create!(
    name: 'C++'

)
Technology.create!(
  name: 'Objective-C',

)
Technology.create!(
  name: 'Java',
)
Technology.create!(
  name: 'Angular'
)
Technology.create!(
  name: 'C++',

)
Technology.create!(
  name: 'Scala',
)
Technology.create!(
  name: 'Shell',

)
Technology.create!(
  name: 'Swift';
)
Technology.create!(
  name: 'Typescript',

)
Technology.create!(
  name: 'Django'

)
Technology.create!(
    name: '.Net Framework'
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
    user_id: sumai.id,
)
Project.create!(
    name: 'Short Cuts',
    aim: "A website that helps our customers find the nearest and cheapest place to get their hair cut",
    category: 'Design',
    user_id: alex.id,
)
Project.create!(
    name: 'Game On',
    aim: "A website that allows users to find games to rent from fellow gamers",
    category: 'Hobbie',
    user_id: sam.id,
)



puts "User and Project seeding complete boi"


