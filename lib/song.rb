require 'pry'
class Song 
  @@count = 0 
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
  
    @@artists << @artist
    @@genres << @genre 
    @@count += 1 
  end 
  
  def self.count
    @@count 
  end 
  
  def self.artists 
    @@artists.uniq!
  end 
  
  def self.genres 
    @@genres.uniq! 
  end
  
  def self.genre_count 
    @@genres.collect do |genre, key| 
      genre = {}
    genre[:genre] = key 
  end 
    @@genres
  end   
end 