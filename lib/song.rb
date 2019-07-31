class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre 
    @name = name
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres = @@genres.uniq
  end
  
  def self.artists
    @@artists = @@artists.uniq
  end
  
  def self.genre_count
  @@genres.inject(Hash.new(0)) {|total, i| total[i] += 1; total}
  end
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) {|total, i| total[i] += 1; total}
  end
end