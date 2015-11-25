Item.delete_all
User.delete_all
ItemImage.delete_all



def create_users(nubmer_of_users)
    for i in 1..nubmer_of_users
    user = User.new
    # user.name = ['user', i].join('')
    user.name = Faker::Name.name
    user.password = '123'
    user.postcode = ['300', i].join('')
    user.email = ['user',i,'@gmail.com'].join('')
    user.profile_avatar = 'http://placehold.it/140x100'
    user.save
    crerate_items(user.id)
  end
end

def crerate_items(user_id)
  for j in 0..9
    item = Item.new
    item.price = (200..500).to_a.sample.to_f
    # item.location = (3000..3400).to_a.sample
    item.title = ['test', j].join('')
    item.user_id = user_id
    item.lat = Faker::Address.latitude
    item.lng = Faker::Address.longitude
    item.loan_status = 'available'
    item.item_details = "Case 580c, all good working order, clean oil, well greased, runs and starts well, good tyres, three buckets for backhoe, really strong unit, done a great job. Reluctant sale as ive become become quite fond of casey"
    item.save
    create_items_images(item.id, user_id)
  end
end

def create_items_images(item_id, user_id)
  for k in 1..5
    image = ItemImage.new
    suckr = ImageSuckr::GoogleSuckr.new
    # image.image_path = 'http://placehold.it/350x150'
    image.image_path = suckr.get_image_url({"q" => "farm equipment"})
    image.item_id = item_id
    image.user_id = user_id
    image.save
    end
end

create_users(5)
