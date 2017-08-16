class Event < ActiveRecord::Base
  belongs_to :user
  has_many :attendants
  has_many :messages

  validates :meetings, :date, :city, :state, presence: true
  validates :meetings, length: {minimum: 2}
end
