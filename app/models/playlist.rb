class Playlist < ActiveRecord::Base

    validates :title, presence: true
    has_many :users, :through => :songs
    has_many :songs
    

end 