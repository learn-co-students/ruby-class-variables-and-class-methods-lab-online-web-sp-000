
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    if @@artists.length > 1 
      @artist << @@artists
    end
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists
  end

end
  