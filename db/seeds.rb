10.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  password = Faker::Internet.password

  User.create(name: name, email: email, password: password)
end

User.all.each do |user|
  date = Faker::Date.between(1.days.from_now, 1.year.from_now)
  description = Faker::Lorem.paragraph

  user.hosted_events.create(date: date, description: description )
end