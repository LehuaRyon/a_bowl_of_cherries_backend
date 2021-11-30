class User < ApplicationRecord
    has_secure_password
    has_many :events
    has_many :months, through: :events
    # call user.first.events, call logged_in_user.events to show all events created by specific user
    validates :username, :password, presence: true
end
