User.create(name: "zecik", email: 'asd@asd.pl', password: 'asd')

10.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  password = Faker::Internet.password

  User.create(name: name, email: email, password: password)
end

User.all.each do |user|
  date = Faker::Date.between(1.year.ago, 1.year.from_now)
  description = Faker::Lorem.paragraph

  e = user.hosted_events.create(date: date, description: description )

  User.all.sample(rand(1..5)).each do |user|
    e.attendees << user
  end

end

