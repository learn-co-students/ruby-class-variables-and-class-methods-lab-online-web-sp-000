class Song 
  attr_reader :name, :artist, :genre 
@@count = 0 
@@artists = []
@@genres = []
def initialize(name, artist, genre)
  @name = name 
  @artist = artist
  @genre = genre 
  @@count += 1 
  @@artists << artist 
  @@genres << genre 
end 

def self.count 
  @@count 
end 

def self.artists
  @@artists.uniq 
end 

def self.genres
  @@genres.uniq
end 

def self.genre_count 
genre_count = {}
  @@genres.each do |genre|
  value = @@genres.count{|x| x == genre}
   genre_count[genre] = value 
 end 
   genre_count 
end 

def self.artist_count
artist_count = {}
  @@artists.each do |artist|
  value = @@artists.count{|x| x == artist}
   artist_count[artist] = value 
 end 
   artist_count
end

end 