class Playlist < ActiveRecord::Base
  belongs_to :user
  belongs_to :owners
  has_many :users, through: :songs, source: :user
  
end
