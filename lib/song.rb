class Song

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

attr_reader :name, :artist, :genre

def self.count
  return @@count
end

def self.genres
 return @@genres.uniq
end

def self.artists
 return @@artists.uniq
end

def self.genre_count
  genre_count = {}
  @@genres.each { |genre|
    genre_count[genre] ||= genre_count[genre] = 0
    genre_count[genre] += 1
  }
  return genre_count

end

def self.artist_count
  artist_count = {}
  @@artists.each { |artist|
    artist_count[artist] ||= artist_count[artist] = 0
    artist_count[artist] += 1
  }
  return artist_count

end

end
