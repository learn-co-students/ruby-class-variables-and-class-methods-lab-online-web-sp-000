require 'pry'

class Song

attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres<<genre
        @@artists<<artist

        @@count += 1

    end


@@count = 0
@@artists = []
@@genres = []

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
    genre_count = {}
@@genres.each do |genre|
    if genre_count[genre]
        genre_count[genre] += 1
    else
        genre_count[genre] = 1
    end
end
return genre_count
end

def self.artist_count
    count = {}
      @@artists.each do |artist|
    if count[artist]
      count[artist] += 1
    else
      count[artist] = 1
      end
    end
    count
    end
end