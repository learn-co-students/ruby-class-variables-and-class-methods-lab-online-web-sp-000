class Song 
  attr_accessor :name, :artist, :genre  #macros attribute accessor for setter and getter methods
  @@count = 0  #class variable 
  @@genres = [] #class variable 
  @@artists = [] #class variable 
  
  def initialize(name, artist, genre) #initialize method takes a song's name, artist, genre
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1 #increment class upon initialization
    @@genres << genre #add genre upon initialization
    @@artists << artist #add artist upon initialization 
  end
  
  def self.count #class method @@count returns total number of songs created
    @@count
  end
  
  def self.genres #class method @@genres returns array of all unique genres of existing songs (no dups)
    @@genres.uniq  
  end
  
  def self.artists #class method @@artists returns array of all unique artists of existing songs (no dups)
    @@artists.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] 
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1 
      end 
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] 
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1 
      end 
    end
    artist_count
  end
  
end