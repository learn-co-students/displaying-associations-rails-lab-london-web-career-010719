class Artist < ActiveRecord::Base
    has_many :songs

    def artist_songs
        artist = Artist.find(self.id)
        artist.songs.each do |song|
            song
        end
    end

    
    def song_count
        artist_songs.count
    end



end
