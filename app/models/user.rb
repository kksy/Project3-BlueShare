class User < ActiveRecord::Base
  # has_secure_password

  has_many :profile_avatars

  # geocoded_by :ip_address,
  # :latitude => :lat, :longitude => :lon
  # after_validation :geocode
end
