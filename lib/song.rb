class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_histogram = {}
  @@artist_histogram = {}
  
  attr_accessor :name, :artist, :genre
  
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
  
  def self.genres
    @@genres.uniq
  end
    
  def self.artists
    @@artists.uniq
  end
  
=begin
  def self.genre_count
    self.genres.each do |genre|
      @@genre_histogram[genre] = @@genres.count(genre)
    end
    @@genre_histogram
  end
=end
  
  def self.genre_count
    Hash[self.genres.map{|genre| [genre, @@genres.count(genre)]}]
  end
  
  def self.artist_count
    self.artists.each do |artist|
      @@artist_histogram[artist] = @@artists.count(artist)
    end
    @@artist_histogram
  end
  
end