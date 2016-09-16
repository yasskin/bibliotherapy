
topic = Topic.create(name: 'Boredom')

topic.ailment << Topic.find_by_name("Look inward")

User.create!(email: "me@home.com", password: "watching the telly")
