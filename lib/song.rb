require 'pry'

class Song
 attr_accessor :name, :artist, :genre 
 @@count = 0 
  
  def initialize(name, artist, genre)
    @@name= name
    @@artist= artist 
    @@genre= genre  
    @@count+=1
  end 

  def self.name 
    @@name 
  end 

  def self.genre
    @@genre
  end 
  
  def self.artist
    @@artist
  end 

  def self.variables
   @@count = 0 
   
  end 
  
  def self.artists
    @@artists = []
  end 
  
  def self.genres 
    @@genres = []
  end 
  
  def artist_count 
    @@artist_count = {}
  end 
  
  def genre_count 
    @@genre_count = {}
  end 
  
     
end  
