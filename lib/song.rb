class Song 
  attr_accessor :name, :artist, :genre
  attr_reader :artists, :genres, :count
  @@genres = []
  @@artists = []
  @@count = 0
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq 
  end
  
  def self.artist_count
    @@artists.tally
  end
  
  def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  end
  
end