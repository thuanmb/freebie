# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# posts
post1 = Post.create({
  title: 'Post 1',
  image_url: 'http://pattayatoday.net/wp-content/uploads/2015/09/CHARITY-MIDNIGHT-RUN-2015-600x315.jpg',
  location: 'location 1',
  description: <<-DESC
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  DESC
})

post2 = Post.create({
  title: 'Post 2',
  image_url: 'http://pattayatoday.net/wp-content/uploads/2015/09/CHARITY-MIDNIGHT-RUN-2015-600x315.jpg',
  location: 'location 2',
  description: <<-DESC
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  DESC
})

post3 = Post.create({
  title: 'Post 3',
  image_url: 'http://pattayatoday.net/wp-content/uploads/2015/09/CHARITY-MIDNIGHT-RUN-2015-600x315.jpg',
  location: 'location 3',
  description: <<-DESC
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  DESC
})

post4 = Post.create({
  title: 'Post 4',
  image_url: 'http://pattayatoday.net/wp-content/uploads/2015/09/CHARITY-MIDNIGHT-RUN-2015-600x315.jpg',
  location: 'location 4',
  description: <<-DESC
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  DESC
})

# campaigns 
campaign1 = Campaign.create({
  title: 'Campaign 1',
  end_date: Date.today + 10,
  status: 'Published',
  image_url: 'http://hieuvetraitim.org/data/image/nha%20tinh%20thuong/Lo-Van-Hac---kc.jpg',
  description: <<-DESC
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  DESC
})

campaign2 = Campaign.create({
  title: 'Campaign 2',
  end_date: Date.today + 10,
  status: 'Published',
  image_url: 'http://hieuvetraitim.org/data/image/nha%20tinh%20thuong/Lo-Van-Hac---kc.jpg',
  description: <<-DESC
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  DESC
})


campaign3 = Campaign.create({
  title: 'Campaign 3',
  end_date: Date.today + 10,
  status: 'Published',
  image_url: 'http://hieuvetraitim.org/data/image/nha%20tinh%20thuong/Lo-Van-Hac---kc.jpg',
  description: <<-DESC
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  DESC
})


campaign4 = Campaign.create({
  title: 'Campaign 4',
  end_date: Date.today + 10,
  status: 'Published',
  image_url: 'http://hieuvetraitim.org/data/image/nha%20tinh%20thuong/Lo-Van-Hac---kc.jpg',
  description: <<-DESC
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  DESC
})
