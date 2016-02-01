@category_toys = Category.create({
  name: 'toys',
  fa_icon: 'fa-reddit-alien',
  img_url: 'http://i.huffpost.com/gen/872762/images/o-TOY-DONATION-facebook.jpg',
  color: '#e6c325'
});

@category_clothes = Category.create({
  name: 'clothes',
  fa_icon: 'fa-shopping-bag',
  img_url: 'https://s3-ap-southeast-1.amazonaws.com/freebievn/clothes.jpg',
  color: '#ea462c'
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
  img_url: 'https://s3-ap-southeast-1.amazonaws.com/freebievn/book.jpg',
  color: '#9f652f'
});

@category_money = Category.create({
  name: 'money',
  fa_icon: 'fa-usd',
  img_url: 'https://i.ytimg.com/vi/bcWgk1XPTvY/maxresdefault.jpg',
  color: '#b89155'
})

@category_people = Category.create({
  name: 'people',
  fa_icon: 'fa-user',
  img_url: 'http://www.bstrust.org/images/blog%20photos/ML_South_Africa_1923.jpg',
  color: '#b86b35'
})

@category_other = Category.create({
  name: 'other',
  fa_icon: 'fa-plus',
  img_url: 'http://www.australiancharityguide.com/Charity%209.jpg',
  color: '#95aa47'
})
