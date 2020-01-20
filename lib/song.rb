class Song
  attr_accessor :name, :artist, :genre

@@genres = []
@@count = 0
@@artists = []

def initialize(name, artist, genre)
  @@count += 1
  @@genres << genre
  @@artists << artist
  @name = name
  @artist = artist
  @genre = genre
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
  
  end
end