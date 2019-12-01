require 'pry' 
class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@artists = []
  @@genres = [] 
  
 def initialize(name, artist, genre) 
   @name = name 
   @artist = artist 
   @genre = genre 
   @@count += 1
   @@artists << artist 
   @@genres  << genre 
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
    genres_count = Hash.new 
    @@genres.each do |genre| 
      genres_count[genre] = @@genres.count(genre) 
    end
    genres_count 
  end 
  
  def self.artist_count 
    artists_count = Hash.new 
    @@artists.each do |artist| 
      artists_count[artist] = @@artists.count(artist) 
    end 
    artists_count 
  end 
  
end 










