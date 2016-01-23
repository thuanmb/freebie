@category_money = Category.create({
  name: 'money',
  fa_icon: 'fa-usd',
  img_url: 'http://images.askmen.com/1080x540/2015/11/02-040952-lending_money_to_friends.jpg',
  color: '#00679A'
})

@category_people = Category.create({
  name: 'people',
  fa_icon: 'fa-user',
  img_url: 'http://images.askmen.com/1080x540/2015/11/02-040952-lending_money_to_friends.jpg',
  color: '#91735b'
})

@category_clothes = Category.create({
  name: 'clothes',
  fa_icon: 'fa-shopping-bag',
  img_url: 'http://www.effortlessgent.com/wp-content/uploads/2010/09/gettingRidOfClothes.jpg',
  color: '#cb3635'
});

@category_furniture = Category.create({
  name: 'furniture',
  fa_icon: 'fa-bed',
  img_url: 'http://www.homereserve.com/images/Classic_room.jpg',
  color: '#a29277'
});

@category_electronics = Category.create({
  name: 'electronics',
  fa_icon: 'fa-laptop',
  img_url: 'http://www.alsglobal.com/~/media/Images/Divisions/Life%20Sciences/Electronics%20Testing/Electronics%205.jpg',
  color: '#35a1e0'
});

@category_books = Category.create({
  name: 'books',
  fa_icon: 'fa-book',
  img_url: 'http://www.uglydogbooks.com/wp-content/uploads/2014/04/books.jpg',
  color: '#9f652f'
});

@category_other = Category.create({
  name: 'other',
  fa_icon: 'fa-plus',
  img_url: 'http://www.australiancharityguide.com/Charity%209.jpg',
  color: '#95aa47'
})
