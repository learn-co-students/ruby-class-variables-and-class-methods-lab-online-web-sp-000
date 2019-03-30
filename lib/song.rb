class Song
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
  
  def name
    @name
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre 
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
    hash = {}
    @@genres.each do |genre|
      if !hash[genre].nil?
        hash[genre] += 1 
      else
        hash[genre] = 1
      end   
    end  
    hash
  end
  
  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if !hash[artist].nil?
        hash[artist] += 1 
      else
        hash[artist] = 1 
      end
    end 
    hash
  end  
end  