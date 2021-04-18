require 'pry'
class Song
    attr_accessor :name, :artist, :genre
        @@count = 0
        @@artists = []
        @@artist_count = {}
        @@genres = []
        @@genre_count = {}

    def initialize(name, artist, genre)
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

    def self.artists
        @@artists.uniq
    end
    
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
       arr = @@genres
       h = Hash.new
       arr.each do |genre|
        h.keys.include?(genre) ? h[genre] += 1 : h[genre] = 1
       end
       h 
    end
    
    def self.artist_count
        arr = @@artists
        h = Hash.new
        arr.each do |artist|
        h.keys.include?(artist) ? h[artist] += 1 : h[artist] = 1
        end
        h 
    end
end

