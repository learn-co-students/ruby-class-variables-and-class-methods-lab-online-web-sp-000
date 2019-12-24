class Song 
  
  attr_accessor :name, :artist, :genre
  
@@count = 0
  @@genres = { :genres, :count }
  @@artists = { :artist, :count }
  @@names = { :names, :count}
  
 def initialize(name, artist, genre)
   @name = name 
   @@names = @name
   @artist = artist 
   @@artists << artist
   @@count += 1 
   @genre = genre
   @@genres << @genre
 end
 
 def name
   @name  
 end 
 
 def self.names
   @@names 
 end 
 
 def artists
   @artist 
 end 
 
 def self.artist_count
   @@artists
 end 
 
 def genre
  @genre
 end 
 
 def self.genre_count
   @@genres 
 end 
 
 def self.count
   @@count
 end 
  
end 
  
