class Playlist < ActiveRecord::Base

    validates :title, presence: true
    has_many :genres, :through => :songs
    has_many :songs
    

end 