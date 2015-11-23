class User < ActiveRecord::Base
  has_secure_password

  has_many :profile_avatars
end
