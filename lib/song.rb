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

  def self.artists
    @@artists.uniq = []
  end 
  
  def self.genres 
    @@genres = []
  end 
  
  def self.artist_count 
    @@artist_count = {}
  end 
  
   def self.genre_count
    genre_count = {}
      @@genres.each do |genre|
        if !genre_count[genre]
        genre_count[genre] = 1
        else
          genre_count[genre] += 1
        end
    end
  end 
end 