Post.create({
  user_id: @user.id,
  category: @category_books,
  status: 'published',
  title: 'Nhóm FMon tặng bộ sách KANTODEX',
  description: "Nhân dịp sắp ra mắt bộ sách mới. Nhóm FMon xin gửi tặng 1 fan hâm mộ bộ sách mới ra lò này.\r\n\r\nhttps://www.facebook.com/fmon.pro",
  location: 'location_1',
  created_at: '2016-01-27 06:30:12.595109',
  updated_at: '2016-01-27 06:30:12.595109',
  main_image_file_name: 'Funding_KANTODEX_by_FMON.jpg',
  main_image_content_type: 'image/jpeg',
  main_image_file_size: '70767',
  main_image_updated_at: '2016-01-27 06:30:12.306011'
})

Post.create({
  user_id: @user.id,
  category: @category_toys,
  status: 'published',
  title: 'Lâu đài đồ chơi cho trẻ em 3-5 tuổi',
  description: 'Đang có món đồ chơi cho bé ko xài nữa. Bạn nào cần thì liên hệ mình nhé.',
  location: 'location_1',
  created_at: '2016-01-27 09:38:09.567942',
  updated_at: '2016-01-27 09:38:09.567942',
  main_image_file_name: 'castle_toy.jpg',
  main_image_content_type: 'image/jpeg',
  main_image_file_size: '53576',
  main_image_updated_at: '2016-01-27 09:38:09.349489'
})

Post.create({
  user_id: @user.id,
  category: @category_toys,
  status: 'published',
  title: 'Bộ truyện Pokemon special',
  description: 'Bạn nào muốn lấy 12 tập truyện Pokemon special thì liên hệ mình
      nhé.',
  location: 'location_1',
  created_at: '2016-01-27 10:22:43.640241',
  updated_at: '2016-01-27 10:22:43.640241',
  main_image_file_name: 'pokemon_special.jpg',
  main_image_content_type: 'image/jpeg',
  main_image_file_size: '122390',
  main_image_updated_at: '2016-01-27 10:22:43.256608'
})
