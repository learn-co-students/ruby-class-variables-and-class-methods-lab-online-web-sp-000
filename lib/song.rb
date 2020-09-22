
class Song 
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  
  attr_accessor :name, :genre, :artist
  
  def initialize(name, artist, genre)
    @@count += 1 
    @name = name
    @genre = genre
    @artist = artist
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
    new_genre_count = {}
    @@genres.uniq.each do |x| 
      new_genre_count[x] = @@genres.count(x)
    end
    new_genre_count
  end
  
  def self.artist_count
    new_artist_count = {}
    @@artists.uniq.each do |x| 
      new_artist_count[x] = @@artists.count(x)
    end
    new_artist_count
  end
  
  
  
  

end