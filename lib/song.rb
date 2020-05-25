class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genres)
  @name = name
  @artist = artist
  @genre = genres
  @@count += 1
  @@artists << @artist
  @@genres << @genre
end

def self.count
  @@count
end

def self.artists
  @@artist
end

def self.genres
  @@genres
end
end
