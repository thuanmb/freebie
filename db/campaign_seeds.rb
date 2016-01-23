# campaigns
campaign1 = Campaign.create({
  title: 'Trao tặng quà Tết tại Lũng Hồ, Yên Minh, Hà Giang',
  end_date: 5.days.from_now,
  status: 'Published',
  categories: [@category_money, @category_clothes, @category_people],
  gmap_location: '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d942346.616976209!2d104.749081!3d22.6895!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x36cb929387547d35%3A0xdc43dc950ffc854!2zTMWpbmcgSOG7kywgWcOqbiBNaW5oLCBIw6AgR2lhbmcsIFZpZXRuYW0!5e0!3m2!1sen!2sus!4v1453543686933" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>',
  image_url: 'http://songhuongthien.vn/uploads/song-huong-thien-7.jpg',
  description: %q(Chương trình Trao tặng quà Tết của Nhóm Sống Hướng Thiện sẽ tổ chức 2 ngày 30, 31/1/2016 (tức 21, 22 tháng Chạp) tại Lũng Hồ, Yên Minh, Hà Giang.

Trao quà cho 156 hộ nghèo ở 3 bản và 128 học sinh mầm non ở 3 điểm trường khó khăn nhất: Phìn Tỷ (75 hộ nghèo và 59 học sinh) Cáp 2 (39 hộ nghèo và 40 học sinh) Xu Chín (42 hộ nghèo và 29 học sinh).

Xã Lũng Hồ có tổng 1,268 hộ dân, 7,013 khẩu (Tính đến 30/9/2015). Có 2 dân tộc sinh sống là dân tộc Mông (98%) và Tày (2%). Kinh tế của người dân chủ yếu dựa vào cây ngô và một ít lúa nước. Tình trạng đói, đứt bữa thường xảy ra vào mùa đói từ tháng 3 âm đến tháng 9 âm lịch.

"Là một giáo viên vùng cao nơi địa đầu cực bắc của Tổ quốc. Nơi mà khí hậu khắc nghiệt mùa đông nước đóng băng. Mong muốn của bản thân em cũng như những giáo viên khác đang trực tiếp giảng dạy ở đây là: các em có một lớp học sạch sẽ, ấm áp, một sân chơi có đủ đồ dùng để dạy và học, có đủ bàn ghế đúng quy cách cho cô và trẻ. Mùa đông các cháu có quần áo ấm để mặc, có dép để đi. Các cháu có những bữa ăn đủ chất. Mong muốn của em là nhân dân no ấm để các cháu được đến trường, đến lớp. Thầy cô giáo có đường thuận tiện để đi lại. Có nơi ở an toàn để an tâm công tác. Cuộc sống nơi đây thực sự rất khó khăn, rất mong được sự giúp đỡ của anh và và tổ chức...".

Đó là chia sẻ của cô Nguyên, giáo viên cắm bản ở Phìn Tỷ.

Dự kiến sẽ tặng áo ấm, ủng, mũ cho 128 học sinh mầm non; tặng bánh kẹo tết và phong bì cho 156 hộ nghèo.

Dự tính:
- Áo ấm, quần, ủng: 128 suất x 110.000đ = 14.080.000đ (Dự tính giá sẽ mềm hơn nữa)
- Túi bánh kẹo, phong bì hộ nghèo: 156 hộ x 300 = 46.800.000đ (quà 100.000đ và phong bì 200.000đ)
=> Tổng tiền chúng ta mong muốn đủ để ủng hộ chuyến đi là: 60.880.000đ
  )
})

campaign2 = Campaign.create({
  title: 'Quyên góp sách truyện cho thư viện - Làng trẻ em Hữu Nghị',
  end_date: 10.days.from_now,
  status: 'Published',
  categories: [@category_books, @category_money],
  image_url: 'http://www.tusachgiaitrigiaoduc.com/wp-content/uploads/2013/07/1044343_572230982841285_1524270752_n.jpg',
  description: %q(Thư viện của “ Làng trẻ em Hữu Nghị” là nơi cung cấp kiến thức cũng như mang đến cho các em một thói quen ý nghĩa thông qua việc: Đọc sách.

Hiểu được điều này và mong muốn mang cho các em nhiều niềm vui cũng như kiến thức, CLB Tình nguyện kêu gọi các bạn sinh viên trong và ngoài Khoa Luật – Đại học Quốc gia Hà Nội, các tổ chức, doanh nghiệp ủng hộ bằng cách quyên góp sách, truyện cho các em (lứa tuổi từ 5-18 tuổi): Truyện tranh, truyện cổ tích, truyền thuyết, sách tô màu, dạy vẽ, dạy làm hoa,…

Mọi đóng góp của các bạn đều là những điều đáng quý, hãy gửi những tấm lòng hảo tâm của các bạn đến với CLB Tình nguyện, chúng tôi sẽ thay mặt các bạn trao tận tay cho các em nhỏ tại “Làng trẻ em Hữu Nghị”
  )
})


campaign3 = Campaign.create({
  title: 'Quyên góp quần áo cũ tặng người nghèo xuân 2015',
  end_date: 14.days.from_now,
  status: 'Published',
  categories: [@category_clothes, @category_money],
  image_url: 'https://scontent-hkg3-1.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/10306260_247351658804062_1167187175941226746_n.jpg?oh=bd141750723955558e241820d0396f20&oe=5734BC25',
  description: %q(Nhóm quyên góp quần áo cũ Quê Hương phối hợp với Hội Chữ Thập Đỏ vận động quyên góp quần áo cũ cho người nghèo ở các tỉnh miền núi phía Bắc, các tỉnh miền Trung và miền Nam.

Các vật phẩm cần được quyên góp gồm: - Quần, áo không bị rách, chắp vá, được giặt ủi sạch sẽ, gấp gọn gàng và đóng gói cẩn thận trong bao ni lông
  )
})


campaign4 = Campaign.create({
  title: 'Campaign 4',
  end_date: Date.today + 10,
  status: 'Published',
  image_url: 'http://hieuvetraitim.org/data/image/nha%20tinh%20thuong/Lo-Van-Hac---kc.jpg',
  description: %q(Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  )
})
