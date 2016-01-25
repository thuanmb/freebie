post1 = Post.create({
  title: 'Post 1',
  image_url: 'http://pattayatoday.net/wp-content/uploads/2015/09/CHARITY-MIDNIGHT-RUN-2015-600x315.jpg',
  location: 'location_1',
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  user_id: @user_random.id,
  category: @category_electronics,
  status: 'published'
})

post2 = Post.create({
  title: 'Post 2',
  image_url: 'http://pattayatoday.net/wp-content/uploads/2015/09/CHARITY-MIDNIGHT-RUN-2015-600x315.jpg',
  location: 'location_1',
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  user_id: @user_random.id,
  category: @category_other,
  status: 'published'
})

post3 = Post.create({
  title: 'Post 3',
  image_url: 'http://pattayatoday.net/wp-content/uploads/2015/09/CHARITY-MIDNIGHT-RUN-2015-600x315.jpg',
  location: 'location_1',
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  user_id: @user_random.id,
  category: @category_clothes,
  status: 'published'
})

post4 = Post.create({
  title: 'Post 4',
  image_url: 'http://pattayatoday.net/wp-content/uploads/2015/09/CHARITY-MIDNIGHT-RUN-2015-600x315.jpg',
  location: 'location_1',
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  user_id: @user_random.id,
  category: @category_other,
  status: 'published'
})
