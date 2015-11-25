Item.delete_all
User.delete_all
ItemImage.delete_all

# Item.create(title: 'tractor', image_id: 'https://www.deere.com/common/media/images/product/tractors/r4d042782_8Rtractor_762x458.jpg', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


# Item.create(title: 'other tractor', image_id: 'http://www.teara.govt.nz/files/p18401nsil.jpg', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


# Item.create(title: 'combine', image_id: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/John_Deere_cotton_harvester_kv02.jpg', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


# Item.create(title: 'truck', image_id: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQwOe6xk_ByOvOfBvUcBKTgQ66gOgNHLmkK4LpMMjpkUGaJKYmDdQ', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


# Item.create(title: 'trailer', image_id: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS1D33kpYnKEvESyY479Ti3uL91X-92ux2NpUenMVg1GuGMfwqDJA', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


# Item.create(title: 'big tractor', image_id: 'http://i.ebayimg.com/00/s/NDgwWDY0MA==/z/BF4AAOSwZVhWRTXz/$_75.JPG', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')

# Item.create(title: 'sprayer', image_id: '
# https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQrCxWpKR7HFv5zaxKcBx_ZiSsFfK7UCR3okauxKRgKMb4NakxP', loan_status: 'onloan', price: '40.00', report: 'n/a', user_id: 1, location: '3000')


# Item.create(title: 'sprayer', image_id: '
# https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQrCxWpKR7HFv5zaxKcBx_ZiSsFfK7UCR3okauxKRgKMb4NakxP', loan_status: 'onloan', price: '40.00', report: 'n/a', user_id: 1, location: '3000')





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
