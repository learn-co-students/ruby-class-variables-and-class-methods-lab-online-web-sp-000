require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
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
  
  def self.genres
   @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @count = {}
    
    @@genres.each do |key|
     value = @@genres.count(key)
     #binding.pry
      if @count.has_key?(key)
        @count[key] << value
      else
        @count[key] = []
        @count[key] = value
      end
    end
    #binding.pry
     @count
  end
  
  def self.artist_count
    @count_artist = {}
    
    @@artists.each do |key|
      value = @@artists.count(key)
      if @count_artist.has_key?(key)
        @count_artist[key] << value
      else
        @count_artist[key] = []
        @count_artist[key] = value
      end
    end
    @count_artist
    
  end


  
end
