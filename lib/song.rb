require 'pry'

class Song
    
    @@count = 0

    @@genres = []

    @@artists = []
    
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_to_hash = {}
        # genre_count_hash = {}
        # @@genres.detect{ |g| @@genres.count(e) > 1 }
        # binding.pry
        @@genres.uniq.each do |element|
            genre_to_hash[element] = @@genres.count(element)
        end
        genre_to_hash
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_to_hash = {}
        @@artists.uniq.each do |element|
            artist_to_hash[element] = @@artists.count(element)
        end
        artist_to_hash
    end
end