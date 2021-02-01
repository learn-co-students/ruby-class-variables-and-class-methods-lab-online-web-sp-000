class Song
attr_accessor :name, :artist, :genre
#class variables
@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @genre = genre
  @artist = artist
#the tests wont allow me to ONLY shovel in unique artists and genres :(
  @@count += 1
  @@genres << @genre
  @@artists << @artist
end


def self.count
  @@count
end
#unique artists array from existing songs
def self.artists
  @@artists.uniq #i discovered a new method!
end
#unique genres from existing songs
def self.genres
  @@genres.uniq
end
#returns hash of genres and num of songs with those genres
def self.genre_count
hash = {}
(@@genres.uniq).each do |u_genre|
  count = @@genres.count {|genre|genre == u_genre}
  hash[u_genre] = count
end
hash
end


#returns hash of artists and their num of songs
def self.artist_count
hash = {}
(@@artists.uniq).each do |u_artist|
  count = @@artists.count {|artist|artist == u_artist}
  hash[u_artist] = count
end
hash
end
end
