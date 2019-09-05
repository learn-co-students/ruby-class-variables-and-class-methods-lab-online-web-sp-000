class Song

@@count = 0
@@artists = []
@@genres = []
@@genre_count = {}
@@artist_count = {}
attr_accessor :name, :artists, :genre

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << @artist
  @@genres << @genre
end

def self.count
  @@count
end

def name
  @name
end

def genre
  @genre
end

def artist
  @artist
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  @@genres.each_with_object(Hash.new(0)) {|genres,counts| counts[genres] += 1}
end

def self.artist_count
  @@artists.each_with_object(Hash.new(0)) {|artists,counts| counts[artists] += 1}
end
end
