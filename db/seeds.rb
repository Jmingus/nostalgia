# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
2.times do
  user = User.create!( first_name: Faker::Name.first_name,
                       last_name: Faker::Name.last_name,
                       user_name: Faker::Name.title,
                       email: Faker::Internet.email,
                       password: 'password',
  )
  6.times do
    user.scraps.create( title: Faker::Lorem.words(4),
                        scrap_picture: Faker::Avatar.image,
                        caption: Faker::Lorem.words(10),

    )
  end
end