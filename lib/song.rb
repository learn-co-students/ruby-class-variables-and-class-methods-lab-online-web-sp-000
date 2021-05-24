class Song 
  attr_accessor :name, :artist, :genre
   @@count = 0 
   @@artists = []
   
   
   @@genres = []

   
   
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    
   
    @@artists << @artist
    @@genres << genre 
    @@count += 1
  end
  
  def self.count 
    @@count
  end
  
  #returns the uniqie items in an array
  def self.genres 
   @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end

#counter hash created to iterate through array. 
  def self.genre_count
    count = Hash.new(0)
    @@genres.each {|genre| count[genre] += 1 }
    return count
  end
  
  def self.artist_count 
    count = Hash.new(0)
    @@artists.each {|artist| count[artist] += 1 }
    return count
  end
end 