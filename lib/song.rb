class Song
  attr_accessor :name, :artist, :genre
  @@genres = []
  @@artists = []
  @@count = 0
  
  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    counting_genre = Hash.new
    @@genres.each {|genre| counting_genre.key?(genre) ? counting_genre[genre] += 1 : counting_genre[genre] = 1}
    counting_genre
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.artist_count
    counting_artist = Hash.new
    @@artists.each {|artist| counting_artist.key?(artist) ? counting_artist[artist] += 1 : counting_artist[artist] = 1}
    counting_artist
  end
  
end