class Song
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    count_hash = Hash.new(0)
    @@genres.each {|genre| count_hash[genre] += 1}
    count_hash
  end
  
  def self.artist_count
    count_hash = Hash.new(0)
    @@artists.each {|artist| count_hash[artist] += 1}
    count_hash
  end
end