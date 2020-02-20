class Song

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)

  @name = name

  @artist = artist
  @@artists << @artist

  @genre = genre
  @@genres << @genre

  @@count += 1
end

def name=(name)
  @name = name
end

def artist=(artist)
  @artist = artist
  @@artists << @artist
end

def genre=(genre)
@genre = genre
@@genres << @genre
end

attr_reader :name, :artist, :genre

def self.count
@@count
end

def self.genres
@@genres.to_set
end

def self.artists
@@artists.to_set
end

def self.genre_count
  hash = Hash.new
  @@genres.each do |genre|
    if hash.has_key?(genre) == false
    hash[genre]
    hash[genre] = @@genres.count(genre)
    end
  end
  hash
end

def self.artist_count
  hash = Hash.new
  @@artists.each do |artist|
    if hash.has_key?(artist) == false
    hash[artist]
    hash[artist] = @@artists.count(artist)
    end
  end
  hash
end


end
