class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(genre, artist, name)
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def artists
       @@artists
  end
  
  def genres
    @@genres
  end
  
  def genre_count
    #returns hash of keys as names of genres, values as songs
  end
  
end
  