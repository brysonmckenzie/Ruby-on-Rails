class User < ActiveRecord::Base
  has_secure_password

  has_many :playlist
  has_many :songs
  has_many :songs_list  through: :playlist source: :playlist
end
