class Playlist < ActiveRecord::Base

    validates :title, presence: true
    
    has_many :songs


end 