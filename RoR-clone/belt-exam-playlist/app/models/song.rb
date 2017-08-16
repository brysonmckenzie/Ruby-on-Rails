class Song < ActiveRecord::Base
  belongs_to :playlist
  has_many :users, through: :playlists
  has_many :owners, through: :playlist, source: :user
end
