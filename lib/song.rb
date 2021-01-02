require 'pry'

class Song
 attr_accessor :name, :artist, :genre 
 @@count = 0 
 
 
# def self.new (name, artist, genre)
#     @@name = name 
#     @@artist = artist 
#     @@genre = genre 
# end 

  def initialize(name, artist, genre)
    @name= name
    @artis = artist 
    @genre= genre  
  end 

  def self.name 
   @@name = name  
  end 

  def self.genre
    @@genre = genre
  end
  
  def self.artist
    @@artist = artist 
  end 
  
  def self.count
    @@count += 1
  end 
end  

  def self.artists
    @@artists.uniq = []
  end 
  
  def self.genres 
    @@genres.uniq = []
  end 
  
  def self.artist_count 
    @@artist_count = {}
    @@artist.each do |artist|
      if !artist_count[artist]
        artist_count[artist] = 1 
      else 
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