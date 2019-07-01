class Song
 @@count = 0
 @@artists = []
 @@genres = []

 attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end
  def self.artists
    @@artists
  end
  def self.genres
    @@genres
  end


end
