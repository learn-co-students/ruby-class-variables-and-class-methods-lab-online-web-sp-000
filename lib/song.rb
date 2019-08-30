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
    @@count += 1
    @@artists << artist
    @@genres << genre
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres
    genres = []
    @@genres.each do |genre|
      if !genres.include?(genre)
        genres << genre
      end 
    end 
    genres
  end 
  
  def self.artists 
    artists = []
    @@artists.each do |artist|
      if !artists.include?(artist)
        artists << artist
      end 
    end 
    artists
  end 
  
  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      if !genres.key?(genre)
        genres[genre] = 1
      else 
        temp = genres.collect {|key,value| value +1}
        genres[genre] = temp.pop
      end 
    end 
    genres
  end
  
   def self.artist_count
    artists = {}
    @@artists.each do |artist|
      if !artists.key?(artist)
        artists[artist] = 1
      else 
        temp = artists.collect {|key,value| value +1}
        artists[artist] = temp.pop
      end 
    end 
    artists
  end
  
end 