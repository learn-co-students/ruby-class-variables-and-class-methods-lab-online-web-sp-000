class Song 
  attr_accessor :name, :artist, :genre, :artists, :genres
  
  @@count = 0
  @@genres = []
  @@artists = []
  # @@artist_count = {}
 # @@genre_count = {}
  
  
  
   def initialize(name, artist, genre)
    
    @name = name
    @artist = artist 
    @genre = genre
    
      @@count = @@count + 1
     
      @@genres << genre
    
      @@artists << artist
      
      
    
    
   end 
  
  def self.count 
    @@count 
    
  end 
  
  # def self.genre 
  #   @@genres
  # end 
  
  # def self.artist 
  #   @@artists
  # end
  
  # def self.artist_count 
  #   @@artist_count
  # end
  
  # def self.genre_count 
  #   @@genre_count
  # end
  
  def self.artists
    
    @@artists.uniq
  end
  
  def self.genres
    
    @@genres.uniq
  end 
  
 
  
  def self.genre_count 
   @@genre_count = Hash.new(0)
  
 
  
  @@genres.each { |genre_item| @@genre_count[genre_item] += 1 }
  return @@genre_count
    
    
  
  
  end 
  
   def self.artist_count
    @@artist_count = Hash.new(0)
    @@artists.each { |artist_entry| @@artist_count[artist_entry] += 1 }
    return @@artist_count
    
   end 
  
  
  
  
  
end 
