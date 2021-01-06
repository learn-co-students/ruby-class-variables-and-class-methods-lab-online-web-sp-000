require 'pry'

class Song
 attr_accessor :name, :artist, :genre
 @@count = 0 
@@artists = []
@@genres = []
@@artist_count = {}
@genre_count = {}


def initialize(name, artist, genre)
    @name= name
    @artist= artist 
    @genre= genre 
    @@genres_count= 
    @@genres << genre
    @@artists << artist
    @@count +=1
 end 


def self.count
  return @@count 
end 

 def self.genres 
   puts @@genres.uniq 
    return @@genres.uniq 
    end 
    
    
  def self.artists
    puts @@artists.uniq 
    return @@artists.uniq 
    end 


def self.artist_count
    puts @artist_count
  end 
  
   def self.genre_count
        puts @genres_count
    end
end 
