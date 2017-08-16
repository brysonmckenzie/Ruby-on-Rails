class User < ActiveRecord::Base
    has_many :tasks
    validates :username, :password, presence: true, length: { minimum: 4 }
    validates :username, uniqueness: true
end
