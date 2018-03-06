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
