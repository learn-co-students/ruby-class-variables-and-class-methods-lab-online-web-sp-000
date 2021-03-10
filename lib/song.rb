class Song

    attr_accessor :name, :artist, :genre
    @@count= 0
    @@genres = []
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre

    end

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
        genres = {}
        @@genres.each do |sound|
            if genres[sound]
                genres[sound] += 1
            else 
                genres[sound] = 1
            end
        end
        genres
    end

    def self.artist_count
        artists = {}
        @@artists.each do |name|
            if artists[name]
                artists[name] += 1
            else
                artists[name] = 1
            end
        end
        artists
    end
end