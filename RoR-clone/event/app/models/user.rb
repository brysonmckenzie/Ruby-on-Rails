class User < ActiveRecord::Base
  has_secure_password
  has_many :messages
  has_many :attendants
  has_many :meetings_hosted, class_name: 'Meeting'
  has_many :meetings, through: :attendants
end
