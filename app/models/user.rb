class User < ActiveRecord::Base
    has_secure_password
    validates :name, presence: true
    validates :email, email: true 
    has_many :playlists, :through => :songs
end