class User < ActiveRecord::Base
  has_secure_password
  has_many :events 
  has_many :messages 
  has_many :attendees, through: :attendants, source: :event
  
end
