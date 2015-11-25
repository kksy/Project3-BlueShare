Item.delete_all
User.delete_all
ItemImage.delete_all

Item.create(title: 'sprayer', image_id: '
https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQrCxWpKR7HFv5zaxKcBx_ZiSsFfK7UCR3okauxKRgKMb4NakxP', loan_status: 'onloan', price: '40.00', report: 'n/a', user_id: 1, location: '3000')


def create_users(nubmer_of_users)
    for i in 1..nubmer_of_users
    user = User.new
    user.name = ['user', i].join('')
    user.password = '123'
    user.postcode = ['300', i].join('')
    user.email = 'user@gmail.com'
    user.profile_avatar = 'http://placehold.it/140x100'
    user.save
    crerate_items(user.id)
  end
end

def crerate_items(user_id)
  for j in 0..9
    item = Item.new
    item.price = (200..500).to_a.sample.to_f
    item.location = (3000..3400).to_a.sample
    item.title = ['test', j].join('')
    item.user_id = user_id
    item.save
    create_items_images(item.id, user_id)
  end
end

def create_items_images(item_id, user_id)
  for k in 1..5
    image = ItemImage.new
    image.image_path = 'http://placehold.it/350x150'
    image.item_id = item_id
    image.user_id = user_id
    image.save
    end
end

create_users(5)
