class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre
  attr_reader :name, :artist, :genre
  
def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
 @@genres << @genre
 @@artists << @artist
end

def self.count
  @@count
end

def self.genres
  @@genres = @@genres.uniq
end

def self.artists
  @@artists = @@artists.uniq
end


def self.genre_count
  @@genres.each do |i|
  @@genre_count[i] = @@genres.count(i)
end
@@genre_count
end


def self.artist_count
  @@artists.each do |i|
  @@artist_count[i] = @@artists.count(i)
end
@@artist_count
end


  
end

