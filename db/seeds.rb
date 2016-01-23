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

category_money = Category.create({
  name: 'money',
  fa_icon: 'fa-usd',
  img_url: 'http://images.askmen.com/1080x540/2015/11/02-040952-lending_money_to_friends.jpg',
  color: '#00679A'
})

category_people = Category.create({
  name: 'people',
  fa_icon: 'fa-user',
  img_url: 'http://images.askmen.com/1080x540/2015/11/02-040952-lending_money_to_friends.jpg',
  color: '#91735b'
})

category_clothes = Category.create({
  name: 'clothes',
  fa_icon: 'fa-shopping-bag',
  img_url: 'http://www.effortlessgent.com/wp-content/uploads/2010/09/gettingRidOfClothes.jpg',
  color: '#cb3635'
});

category_furniture = Category.create({
  name: 'furniture',
  fa_icon: 'fa-bed',
  img_url: 'http://www.homereserve.com/images/Classic_room.jpg',
  color: '#a29277'
});

category_electronics = Category.create({
  name: 'electronics',
  fa_icon: 'fa-laptop',
  img_url: 'http://www.alsglobal.com/~/media/Images/Divisions/Life%20Sciences/Electronics%20Testing/Electronics%205.jpg',
  color: '#35a1e0'
});

category_other = Category.create({
  name: 'other',
  fa_icon: 'fa-plus',
  img_url: 'http://www.australiancharityguide.com/Charity%209.jpg',
  color: '#95aa47'
})
