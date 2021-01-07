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
  index = 0 
  new_hash = {}
  @@artists.each_with_index do  |name, index|
    if new_hash[name]
    new_hash[name] +=1 
    else 
      new_hash[name] = 1
      end 
    end 
new_hash
end 

     

  def self.genre_count
    index = 0 
    new_hash = {}
    @@genres.each_with_index do |name, index|
    if new_hash[name]
      new_hash[name] +=1 
    else 
      new_hash[name] = 1 
    end  
  end 
  new_hash 
end
end 