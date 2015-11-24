Item.delete_all

Item.create(title: 'tractor', image_id: 'https://www.deere.com/common/media/images/product/tractors/r4d042782_8Rtractor_762x458.jpg', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


Item.create(title: 'other tractor', image_id: 'http://www.teara.govt.nz/files/p18401nsil.jpg', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


Item.create(title: 'combine', image_id: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/John_Deere_cotton_harvester_kv02.jpg', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


Item.create(title: 'truck', image_id: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQwOe6xk_ByOvOfBvUcBKTgQ66gOgNHLmkK4LpMMjpkUGaJKYmDdQ', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


Item.create(title: 'trailer', image_id: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS1D33kpYnKEvESyY479Ti3uL91X-92ux2NpUenMVg1GuGMfwqDJA', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')


Item.create(title: 'big tractor', image_id: 'http://i.ebayimg.com/00/s/NDgwWDY0MA==/z/BF4AAOSwZVhWRTXz/$_75.JPG', loan_status: 'onloan', price: 40.00, report: 'n/a', user_id: 1, location: '3000')

Item.create(title: 'sprayer', image_id: '
https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQrCxWpKR7HFv5zaxKcBx_ZiSsFfK7UCR3okauxKRgKMb4NakxP', loan_status: 'onloan', price: '40.00', report: 'n/a', user_id: 1, location: '3000')


# for i in 0..10
#   item = Item.new
#   image = ItemImage.new
#   temp = 'test' + i
#   item.title = temp.join('')
#   image.image_path = 'http://placehold.it/350x150'
#   image.item_id = item.id
#   item.image_id = image.id
#   item.price = 40.00 + i
#   item.location = 3000 + i
#   image.user_id = i

#   image.save
#   item.save
# end


