class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_many :users, through: :events
  validates :content, :event, :user, presence: true
  validates :content, length: {minimum: 3}
end
