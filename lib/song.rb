class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    
    @@count += 1 
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
    @genre_count = {}
    @@genres.each do |key|
      if @genre_count.key?(key) == true 
        @genre_count[key] +=1 
        
      else @genre_count[key] = 1 
      end 
    end 
        
      @genre_count
 
    
  end 
  
  def self.artist_count 
    @artists_count = {}
    @@artists.each do |key|
      if @artists_count.key?(key) == true 
        @artists_count[key]+=1 
      else @artists_count[key] = 1 
      end 
    end 
    @artists_count
    
    
    
    
    
  end 
  
  
  
  
end 