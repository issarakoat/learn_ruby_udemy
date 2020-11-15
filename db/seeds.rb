#User.create!(email: 'admin@example.com', password: 'admin@example.com', password_confirmation: 'admin@example.com')
#user = User.new(
#  email: 'admin1929@example.com', 
#  password: '123456', 
#  password_confirmation: '123456'
#)
#user.skip_confirmation!
#user.save!

PublicActivity.enabled = false
30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.first.id,
    short_description: Faker::Quote.famous_last_words,
    language: Faker::ProgrammingLanguage.name,
    level: 'Beginner',
    price: Faker::Number.between(from: 1000, to: 20000)
  }])
end
PublicActivity.enabled = true