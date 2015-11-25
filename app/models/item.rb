# require 'httparty'

class Item < ActiveRecord::Base
  belongs_to :user
  has_many :item_types
  has_many :item_images

  def location_details
    JSON(HTTParty.get("http://v0.postcodeapi.com.au/suburbs/#{self.location }.json").body)
  end
end
