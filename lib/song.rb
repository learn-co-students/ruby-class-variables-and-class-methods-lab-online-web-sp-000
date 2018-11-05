class Song

attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []
def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count +=1
  @@artists << artist
  @@genres << genre
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
  genrecount = {}
  @@genres.each {|genre|
  if !genrecount.has_key?(genre) then genrecount[genre] = 1
  else genrecount[genre] += 1
  end
  }
  genrecount
end

def self.artist_count
  artist_count = {}
  @@artists.each {|artist|
  if !artist_count.has_key?(artist) then artist_count[artist] = 1
  else artist_count[artist] += 1
  end
  }
  artist_count
end

end
