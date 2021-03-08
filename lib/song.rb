class Song 
  
  attr_accessor :name, :artist, :genre

  @@count = 0 
  @@artists = []
  @@genres = [] 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
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
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.genre_count
    @@genres.reduce(Hash.new(0)) do |k, v|
      k[v] += 1 
      k
    end 
  end 
  
  def self.artist_count 
    @@artists.reduce(Hash.new(0)) do |k, v|
      k[v] += 1 
      k 
    end 
  end 
  
  
end 