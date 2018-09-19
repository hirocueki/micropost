email = "hirocueki@gmail.com"
password = "aaaaaa"
User.create!(email: email, password:password, password_confirmation: password)

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@q3.org"
  password = "password"
  User.create!(email: email,password: password,password_confirmation: password)
end


# 記事の生成
users = User.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.question
  content = Faker::Lorem.paragraphs(1, true)
  tag_list = Faker::Lorem.words(4, true)
  users.each { |user| user.items.create!(title: title, content: content, tag_list: tag_list) }
end