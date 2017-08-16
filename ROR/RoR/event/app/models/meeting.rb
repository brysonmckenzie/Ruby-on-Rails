class Meeting < ActiveRecord::Base
  belongs_to :user
  has_many :attendants #neccessary for many many relationships not neccessary for one to many relationships
  has_many :attending, through: :attendants, source: :user #because attendant belongs to :user not :attending
end
