class Song
  
  #class variables 
  @@count = 0
  @@genres = []
  @@artists=[]
  
  #instance variables 
  def initialize(name, artist, genre)  
    @name = name  
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end  
  
  #accessors
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  
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
    @@genres.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
  end 
  
  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artist,counts| counts[artist] += 1 }
  end 
  
end 