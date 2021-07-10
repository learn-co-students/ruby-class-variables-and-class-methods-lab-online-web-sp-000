class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
     @@artists_count = {}

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

def self.artists
  @@artists.uniq
end

def self.genre_count
  @@genres.each { |x| @@genre_count[x] = @@genres.count(x) }
  @@genre_count
end

def self.artist_count
  @@artists.each { |x| @@artist_count[x] = @@artists.count(x) }
  @@artist_count
end

end
