class Song < ActiveRecord::Base
    
    validates :title, presence: true
    validates :artist, presence: true

    belongs_to :genre

end 