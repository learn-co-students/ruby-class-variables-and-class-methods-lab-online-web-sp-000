class Song

  @@count = 0 
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name 
    @artist = artist
    @genre = genre
    @@genres << genre 
    @@artists << artist 
  end 
  
  def self.count
    @@count   
  end
  
 def self.genres 
    @@genres 
  end
  
  def self.artists 
    @@artists.uniq 
  end 
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genres.each_with_object(Hash.new(0)){|value, key| key[value] += 1}
end 
  
  def self.artist_count
    @@artists.each_with_object(Hash.new(0)){|value, key| key[value] += 1}
  end 
  
end 