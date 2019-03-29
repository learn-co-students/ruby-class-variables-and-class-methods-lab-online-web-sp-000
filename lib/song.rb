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
    @@genres.each do |genre|
      if !@@genres.include?(@genre) || @genre != nil
        @@genres << @genre
      end
    end  
    @@genres
  end  
  
  
end  