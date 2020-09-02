class Song 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  @@count = 0 
  @@artists = [] 
  @@genres = []
  
  def self.count
    @@count
  end
  
  def name=(name)
    @name = name
  end
 
  def name
    @name
  end
  
  def artist=(artist)
    @artist = artist
  end
 
  def artist
    @artist
  end
  
  def genre=(genre)
    @genre = genre
  end
 
  def genre
    @genre
  end
  
  def self.artists 
    return @@artists.uniq
  end
  
  def self.genres 
    return @@genres.uniq
  end 
  
  def self.artist_count 
    hash = {}
      @@artists.inject(Hash.new(0)) do |hash, e|
      hash[e] += 1
      hash
    end
  end 
  
  def self.genre_count 
    hash = {}
      @@genres.inject(Hash.new(0)) do |hash, e|
      hash[e] += 1
      hash
    end
  end
end