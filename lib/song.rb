class Song
    attr_accessor :name, :artist, :genre
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
    h = Hash.new(0)
 @@genres.each{|v| h[v] += 1}
 return h
end

def self.artist_count
    h = Hash.new(0)
 @@artists.each{|v| h[v] += 1}
 return h
end

end
