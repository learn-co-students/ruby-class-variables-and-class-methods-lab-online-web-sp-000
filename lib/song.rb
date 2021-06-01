
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  
  
  def initialize(name, artist, genre, count, artists)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@artists << Song.new
  end
  
  def self.count
    @@count
  end
  
 
  
  def self.genre_count
  end

  def self.artist_count
  end

end
  