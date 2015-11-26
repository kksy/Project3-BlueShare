class Item < ActiveRecord::Base
  belongs_to :user
  has_many :item_types
  has_many :item_images

  def location_details

    # JSON(HTTParty.get("http://v0.postcodeapi.com.au/suburbs/#{self.location }.json").body)
    # HTTParty.get("http://v0.postcodeapi.com.au/suburbs/#{self.location }.json")
    # apiKey = '469b86a7-305f-48d3-a717-5867de9f3e06'
    HTTParty.get("https://auspost.com.au/api/postcode/search.json?q=#{self.location }", headers: {"AUTH-KEY" => "469b86a7-305f-48d3-a717-5867de9f3e06"})
    # curl --header "AUTH-KEY: 469b86a7-305f-48d3-a717-5867de9f3e06" https://auspost.com.au/api/postcode/search.json?q=2086

  end
end
