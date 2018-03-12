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
Technology.destroy_all
puts "Starting seed for you, hold tight ...."

Technology.create!(
  name: 'Ruby',
  remote_photo_url: 'http://pngimg.com/uploads/ruby/ruby_PNG29.png'
)
Technology.create!(
  name: 'HTML',
  remote_photo_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/2000px-HTML5_logo_and_wordmark.svg.png'
)
Technology.create!(
  name: 'CSS',
  remote_photo_url: 'https://vignette.wikia.nocookie.net/howtoprogram/images/a/a9/CSS3.png/revision/latest/scale-to-width-down/342?cb=20130422012035'''
)
Technology.create!(
  name: 'JS',
  remote_photo_url: 'https://upload.wikimedia.org/wikipedia/commons/d/dc/Javascript-shield.png'
)
Technology.create!(
  name: 'Rails',

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

)
Technology.create!(
  name: 'Typescript',

)
Technology.create!(
  name: 'PHP',

)
Technology.create!(
  name: 'Perl',

)
Technology.create!(
  name: 'Java',

)
Technology.create!(
  name: 'Angular',

)
Technology.create!(
  name: 'C++',

)
Technology.create!(
  name: 'Scala',

)
Technology.create!(
  name: 'Jquery',

)
Technology.create!(
  name: 'Swift',

)
Technology.create!(
  name: 'Django',

)
Technology.create!(
  name: 'Net-framework',

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


