class Song
  @@count = 0 
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
  
  def self.count 
    @@count 
  end 
  
  def self.genres
    @@genres.uniq 
  end 
  
  def self.genre_count 
    answer = {} 
    @@genres.each do |genre| 
      if answer[genre] 
        answer[genre] += 1 
      else 
        answer[genre] = 1 
      end 
    end 
    
    answer 
  end 
  
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.artist_count
     answer = {} 
      @@artists.each do |artist| 
      if answer[artist] 
        answer[artist] += 1 
      else 
        answer[artist] = 1
      end 
    end 
    
    answer 
  end 
  
  
end #end of the song class   