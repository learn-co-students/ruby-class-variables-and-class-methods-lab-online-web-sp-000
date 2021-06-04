class Song 
  
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << genre 
    @@artists << artist 
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    genres = @@genres.uniq
    genres 
  end
  
  def self.artists 
    artists = @@artists.uniq 
    artists
  end
  
  def self.genre_count
    number_of_genres = @@genres.group_by{ |v| v }.map{ |k, v| [k, v.size] }.to_h
    number_of_genres
  end 
  
  def self.artist_count
    number_of_artists = @@artists.group_by{ |v| v }.map{ |k, v| [k, v.size] }.to_h
    number_of_artists
  end 
end

