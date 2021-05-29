
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  
  def self.artists
    @@artists = []
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    
  end
  
  def self.count
    @@count
  end
  
 
  
  def self.genre_count
  end

  def self.artist_count
  end

end
  