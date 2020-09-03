class Song
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @@genres << genre
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre
    end 

    attr_accessor :name, :artist, :genre

    def self.count
        @@count
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_map = {}
        @@genres.each do |genre|
            if genre_map[genre] == 1
                genre_map[genre] += 1
            else genre_map[genre] = 1
            end
        end 
        genre_map
    end

    def self.artist_count
        artist_map = {}
        @@artists.each do |artist|
            if artist_map[artist] == 1
                artist_map[artist] += 1
            else artist_map[artist] = 1
            end 
        end 
        artist_map
    end 
end