class Song

    attr_accessor :name, :artist, :genre, :count
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre

    end
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        counter = Hash.new(0)
        @@genres.each do |genre|
            counter[genre] += 1
        end
        counter
    end

    def self.artist_count
        artist_hash = Hash.new(0)
        @@artists.each do |artist|
            artist_hash[artist] += 1
        end
        artist_hash
    end
end