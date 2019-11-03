class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name,artist,genre) 
    @name = name 
    @artist = artist 
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist 
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
    @@genres.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
    #each genre instance is stored @@genres 
    #@@genres is an array 
    #we want to make the genre name a key and the total number of that genre in the array the value for the hash.
    #total number of times that genre appears in array 
  end   
  
  def self.artist_count 
    @@artists.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  end   
end   