class User < ApplicationRecord
    has_secure_password
    has_many :events
    has_many :months, through: :events
    validates :username, :password, presence: true
    validates :username, uniqueness: true
end
