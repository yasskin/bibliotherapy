
topic = Topic.create(name: 'Boredom')

topic.ailment << Topic.find_by_name("Look inward")
