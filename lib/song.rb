require 'pry'

class Song
  
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
    # binding.pry
  end

  def self.count 
    @@count
  end
  
  def self.artists
    array = []
    @@artists.each do |x|
      if !array.include?(x) 
        array << x
      end
    end
    array 
  end 
  
  def self.genres
    array = []
    @@genres.each do |x|
      if !array.include?(x) 
        array << x
      end
    end
    array 
  end 

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      # binding.pry
      if hash[genre]
        hash[genre] += 1
      else 
        hash[genre] = 1
      end
    end
    hash
  end
  
  def self.artist_count
    hash = {}
    @@artists.each do |artist|
    # binding.pry
      if hash[artist]
        hash[artist] += 1
      else 
        hash[artist] = 1
      end
    end
    hash
  end

end
