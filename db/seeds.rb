
topics = [
  'Love', 'Work', 'Mood', 'Health', 'Travel'
]

topics.each do |name|
  Topic.create( name: name )
end
