class Attendant < ActiveRecord::Base
  belongs_to :user
  belongs_to :meetings
end
