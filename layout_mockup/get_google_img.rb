require 'pry'
require 'image_suckr'

suckr = ImageSuckr::GoogleSuckr.new

image_list =["https://media.licdn.com/mpr/mpr/p/8/005/095/1b8/37ef2e3.jpg",
 "http://farmingequipmentcanada.com/wp-content/uploads/2013/01/farm-equipment-list-baler.jpg",
 "http://bishopfarmequipment.com/images/jd7130_640w.jpg",
 "http://mfg.regionaldirectory.us/farm-equipment-720.jpg",
 "http://farmingequipmentcanada.com/wp-content/uploads/2013/01/farm-equipment-list-tractor.jpg",
 "http://previews.123rf.com/images/diyanski/diyanski1208/diyanski120800130/14857776-Agricultural-activities-modern-farm-equipment-in-field-Stock-Photo.jpg",
 "http://www.mdixonfarms.com/siteart/slides/1.jpg",
 "http://m.c.lnkd.licdn.com/mpr/mpr/p/8/005/0b5/375/0c89c0c.png",
 "https://agriculturalmachineryforfaming.files.wordpress.com/2013/07/15971007-agricultural-machinery-for-preparing-hay.jpg",
 "http://thumbs.dreamstime.com/x/agricultural-machinery-sowing-tractor-seeder-30489925.jpg",
 "http://www.nc-engineering.com/cms/wp-content/uploads/2013/04/Picture-26-Pulse-Jetter-Firing.jpg",
 "http://www.fredhopkinswa.com.au/wp-content/uploads/wpsc/category_images/FC4000.jpg",
 "https://upload.wikimedia.org/wikipedia/commons/0/08/Agricultural_machinery.jpg",
 "http://images.farmingads.co.uk/guide-to-buying-used-farm-equipment.jpg",
 "http://www.cottrill.ca/images/galleries/agriculture/OrangePetewithPup-Cleaned.jpg",
 "http://www.farming2015.net/wp-content/uploads/2014/11/man-agricultural-truck-3.jpg",
 "http://www.tatratrucks.com/cache/images/galleryPreviewBig/tatra-trucks_zeme-zivitelka_01_hlavni.jpg",
 "http://wawg.enigmamarketing.com/wp-content/uploads/2015/03/farmtruck.jpg",
 "http://oklahomafarmreport.com/wire/news/2012/03/media/00459_ForestTreeSeedlingProduction03282012.jpg",
 "http://www.farm-equipment.com/ext/resources/images/Sitrex_QR_Range_V_Type_Rakes.jpg",
 "http://img.houss.us/medium/2/agricultural%2520machinery.jpg",
 "http://www.sitesthatmeanbusiness.com/wp-content/uploads/2015/06/Farming-Equipment.jpg",
 "http://img.bedroomidea.us/medium/4/farming%2520machines.jpg",
 "http://www.farm-king.com/imgs/application_equipment/ut/ut_sprayer-main.jpg",
 "http://cropcareequipment.com/img/aboutUs.jpg",
 "http://blog.cleveland.com/business_impact/2009/07/large_chemical-farm.jpg",
 "http://lite-trac.com/farm-machinery/wp-content/themes/litetrac/images/sidebars/sprayer-4-b.jpg",
 "http://cropcareequipment.com/img/trailerSprayers/300galSprayer/mainImage.jpg"]
 

for i in 0..10
  image_path = suckr.get_image_url({"q" => "farm s"})
  if !image_list.include? image_path
    image_list << image_path
  end 

end

binding.pry


