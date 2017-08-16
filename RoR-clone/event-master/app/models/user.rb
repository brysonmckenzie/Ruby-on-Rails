class User < ActiveRecord::Base
  has_secure_password
  has_many :messages
  has_many :attendants
  has_many :attendees, through: :meetings 
end
