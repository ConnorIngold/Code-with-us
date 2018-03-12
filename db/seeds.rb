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
  remote_photo_url: 'https://vignette.wikia.nocookie.net/howtoprogram/images/a/a9/CSS3.png/revision/latest/scale-to-width-down/342?cb=20130422012035'
)
Technology.create!(
  name: 'JS',
  remote_photo_url: 'https://upload.wikimedia.org/wikipedia/commons/d/dc/Javascript-shield.png'
)
Technology.create!(
  name: 'Rails',
  remote_photo_url: 'https://cdn-images-1.medium.com/max/1600/1*-oIlwIWlt0BDN4b5a9rRCQ.png'
)
Technology.create!(
  name: 'React',
  remote_photo_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/512px-React-icon.svg.png'
)
Technology.create!(
  name: 'SQL',
  remote_photo_url: 'https://cdn0.iconfinder.com/data/icons/superuser-extension-light/512/675277-data_database_sql_query-128.png'
)
Technology.create!(
  name: 'Python',
  remote_photo_url: 'https://vignette.wikia.nocookie.net/lpunb/images/b/b1/Logo_Python.png/revision/latest?cb=20130301171443'
)
Technology.create!(
  name: 'C#',
  remote_photo_url: 'https://redbridgecourses.com/wp-content/uploads/2014/09/C.png'
)
Technology.create!(
  name: 'Typescript',
  remote_photo_url: 'https://rynop.files.wordpress.com/2016/09/ts.png?w=816'
)
Technology.create!(
  name: 'PHP',
  remote_photo_url: 'http://www.freepngimg.com/thumb/php/6-2-php-logo-png-image-thumb.png'
)
Technology.create!(
  name: 'Perl',
  remote_photo_url: 'http://diginetinfosystems.com/content/img1/perl-scripting-training.jpg'
)
Technology.create!(
  name: 'Java',
  remote_photo_url: 'http://www.slowfoodtruck.com/wp-content/uploads/2017/04/java-logo.png'
)
Technology.create!(
  name: 'Angular',
  remote_photo_url: 'https://angular.io/assets/images/logos/angular/angular.svg'
)
Technology.create!(
  name: 'C++',
  remote_photo_url: 'https://upload.wikimedia.org/wikipedia/commons/1/18/ISO_C%2B%2B_Logo.svg'
)
Technology.create!(
  name: 'Scala',
  remote_photo_url: 'http://www.verifyrecruitment.com/blog/wp-content/uploads/2015/10/Scala1.png'
)
Technology.create!(
  name: 'Jquery',
  remote_photo_url: 'https://vignette.wikia.nocookie.net/howtoprogram/images/9/93/JQuery.png/revision/latest?cb=20130423012006'
)
Technology.create!(
  name: 'Swift',
  remote_photo_url: 'https://cdn.macrumors.com/article-new/2014/06/swift.png'
)
Technology.create!(
  name: 'Django',
  remote_photo_url: 'http://www.unixstickers.com/image/cache/data/stickers/django/django_badge.sh-600x600.png'
)
Technology.create!(
  name: 'Net-framework',
  remote_photo_url: 'https://i0.wp.com/www.andersrodland.com/wp-content/uploads/2017/05/NET-Framework-4.7.png?resize=300%2C300&ssl=1'
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


