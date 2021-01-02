require 'pry'

class Song
 attr_accessor :name, :artist, :genre, :artists, :genres 
 @@count = 0 
 
def initialize(name, artist, genre)
    @@genres= genres 
    @@artists= artists 
    @name= name
    @artist= artist 
    @genre= genre  
    @@count +=1
  end 


  def self.artists
    @@artists.uniq = []
    return @@artists.uniq 
    end 

  
  def self.genres 
    @@genres.uniq = []
    return @@genres.uniq 
   end 

def self.count 
  return @@count 
end 


def self.artist_count 
    @@artist_count = {}
    @@artist.each do |artist|
      if !artist_count[artist]
        artist_count[artist] = 1
      else 
      end 
    end 
  end 
  
   def self.genre_count
    genre_count = {}
      @@genre.each do |genre|
        if !genre_count[genre]
        genre_count[genre] = 1
        else
          genre_count[genre] += 1
        end
    end
  end
end 