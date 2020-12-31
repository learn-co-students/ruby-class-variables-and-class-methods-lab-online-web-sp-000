require 'pry'

class Song
 @@count= 0 
    @@artists = [ ]


def self.artists
  @@artists
end 

def self.name 
  @@name 
end 

def self.genres 
  @@genres 
end 

  def initialize(name, artist, genre)
    @name= name
    @artist= artist 
    @genre= genre  
    @@count +=1
   
     
    end 
end 
