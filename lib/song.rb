class Song
  @@count = 0
  @@artists = []
  @@genres = []

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre
end

def self.genre_count
  genre_hash = {}
  @@genres.each do |x|
    if genre_hash[x]
      genre_hash[x] += 1
    else
      genre_hash[x] = 1
end
end
return genre_hash
end

def self.artist_count
  artist_genre = {}
  @@artists.each do |x|
    if artist_genre[x]
      artist_genre[x] += 1
    else
      artist_genre[x] = 1
    end
  end
  return artist_genre
end


end
