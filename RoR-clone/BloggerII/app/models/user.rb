class User < ActiveRecord::Base
    has_many :owners
    has_many :blogs, through: :owners

end
