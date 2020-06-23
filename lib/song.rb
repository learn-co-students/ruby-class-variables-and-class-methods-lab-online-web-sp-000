class Song 
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_hash = {}
  @@artist_hash = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @genre = genre
    @artist = artist
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genres.each do |genre|
      if @@genre_hash.key?(genre) == true
       @@genre_hash[genre] += 1
      else
        @@genre_hash.store(genre, 1)
      end
    end
    @@genre_hash
  end
  
  def self.artist_count
    @@artists.each do |artist|
      if @@artist_hash.key?(artist) == true
        @@artist_hash[artist] += 1 
      else
        @@artist_hash.store(artist, 1)
      end
    end
    @@artist_hash
  end
  
        
        
      
  
  def self.count
    @@count
  end
  
end  