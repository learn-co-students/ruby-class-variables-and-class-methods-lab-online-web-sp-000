require "pry"
class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)

@@count += 1
self.name = name
self.genre = genre
self.artist = artist
@@genres << genre
@@artists << artist
end

def self.count
return @@count
end

def self.genres
@@genres.uniq!
return @@genres
end

def self.artists
@@artists.uniq!
return @@artists
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
  artist_count = {}
  @@artists.each do |artist|
  if artist_count[artist]
    artist_count[artist] += 1
  else
    artist_count[artist] = 1
  end
  end
  return artist_count
end

end
