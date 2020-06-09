require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@uniqueGenres = []
    @@artists = []
    @@uniqueArtists = []
    @@genreCount = {}
    @@artistCount = {}
    @@names = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
        
        
        if @@uniqueGenres.include?(self.genre) 
            #@@genreCount[self.genre] = 1
        else
            @@uniqueGenres << self.genre
           # @@genreCount[self.genre] = 1
        end
        if @@uniqueArtists.include?(self.artist) 
           # @@artistCount[self.artist] = 1
        else
            @@uniqueArtists << self.artist
            #@@artistCount[self.artist] = 1
        end
        if !@@names.include?(self.name) && @@genreCount[self.genre] == nil
            @@genreCount[self.genre] = 1
            @@artistCount[self.artist] = 1
        elsif @@names.include?(self.name)
        
        else
            #binding.pry
            @@genreCount[self.genre] = @@genreCount[self.genre]+ 1
            @@artistCount[self.artist] = @@artistCount[self.artist]+ 1
        end
        #binding.pry
        @@names << name
    end

    def self.count
        @@count
    end

    def self.genres
        #binding.pry
        @@uniqueGenres
    end

    def self.artists
        @@uniqueArtists
    end

    def self.artist_count
       @@artistCount
    end
    def self.genre_count
        @@genreCount
    end
end