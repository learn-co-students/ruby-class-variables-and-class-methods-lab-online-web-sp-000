class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists 
    @@artists.uniq
  end
  
  def self.count
    @@count
  end
  
  def self.genre_count
    count = Hash.new(0)
    @@genres.each do |genre|
      count[genre] += 1
    end
    count
  end

  def self.artist_count
    count = Hash.new(0)
    @@artists.each do |artist|
      count[artist] += 1
    end
    count
  end
end