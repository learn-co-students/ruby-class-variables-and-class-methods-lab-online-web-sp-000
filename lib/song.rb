class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        return @@count
    end

    def self.artists
        @artists_count = @@artists.uniq
    end

    def self.genres
        @genre_count = @@genres.uniq
    end

    def self.genre_count
        @@genres.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
    end

    def self.artist_count
        @@artists.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
    end

end
