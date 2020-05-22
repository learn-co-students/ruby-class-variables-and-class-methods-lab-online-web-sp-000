require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
    end

    def self.count
        @@count
    end

    def self.genres
        unique_genres = []
        @@genres.each do |genre|
            if !(unique_genres.include?(genre))
                unique_genres.push(genre)
            end
        end
        unique_genres
    end

    def self.artists
        unique_artists = []
        @@artists.each do |artist|
            if !(unique_artists.include?(artist))
                unique_artists.push(artist)
            end
        end
        unique_artists
    end

    def self.genre_count
        count = {}
        self.genres.each do |genre|
            count[genre] = 0
        end
        @@genres.each do |genre|
            count[genre] += 1
        end
        count
    end

    def self.artist_count
        count = {}
        self.artists.each do |artist|
            count[artist] = 0
        end
        @@artists.each do |artist|
            count[artist] += 1
        end
        count
    end
end