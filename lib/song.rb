class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = [] 
  
  def initialize(name, artist, genre)
    
    @name = name 
    @genre = genre
    @artist = artist
    
    @@artists << artist
    @@genres << genre
    @@count+=1
    
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
    hashish = {}
    @@genres.each do |gen|
      if hashish[gen] == nil
        hashish[gen] = 1 
      else
        hashish[gen] += 1
  end
end
hashish
end

  def self.artist_count
    hashish = {}
    @@artists.each do |art|
      if hashish[art] == nil
        hashish[art] = 1 
      else
        hashish[art] += 1
  end
end
hashish
end
    
    
    
end