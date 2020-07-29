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
    @@genres << genre
    @@artists << artist
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
    genre_count = Hash.new(0)
      # there should be a hash of keys (genres) and values (counts); set default value of any key to zero (Hash.new(0) syntax vs. = {}, which sets keys equal to nil)
    
    @@genres.each do |genre|
      genre_count[genre] += 1
        # 1) check to see if the genre exists
        # 2) add the genre if it doesn't exist
        # 3) increment the value of that genre key
    end
    
    genre_count
      # 4) return the updated hash
  end
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |artist|
      artist_count[artist] += 1 
    end
    artist_count
  end
  
end 
