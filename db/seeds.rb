# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do
	Article.create(body: Faker::Lorem.paragraph(2), title: Faker::Company.catch_phrase, author_id: (1..10).to_a.sample)
end


10.times do 
	Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
