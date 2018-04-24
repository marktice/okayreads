## admin creatioin
mark = User.create!(
  email: 'markthomastice@gmail.com',
  password: 'password123',
  admin: true
)
marks_profile = Profile.new(
  first_name: 'Mark',
  last_name: 'Tice',
  street_address: '120 Spencer St',
  city: 'Melbourne',
  state: 'Vic',
  postcode: '3000',
  country_code: 'AU'
)
mark.profile = marks_profile


10.times do
  okbook = Book.create!(
    title: Faker::Book.title,
    author: Faker::Book.author,
    description: Faker::Lorem.paragraph,
    genre: Faker::Book.genre,
    year: rand(1960..2018)
  )
  puts "Created #{okbook.title}"
end