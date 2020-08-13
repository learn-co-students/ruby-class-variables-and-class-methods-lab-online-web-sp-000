class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = [] 
  @@artists = []
 
  def initialize(name, artist, genre)
    @@count +=1
    
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << @artist
    @@genres << @genre 
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
    genre_count = {} # returns hash in which keys are names of each genre 
    
    @@genres.each do |genre| # iterates through @@genres
      # if genre exists in list up to this point, add to existing count
      if genre_count[genre] 
        genre_count[genre] += 1 
      # genre doesn't exist, create new pair & start with count "1"
      else 
        genre_count[genre] = 1 
      end
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = {} # returns hash in which keys are names of each genre 
    
    @@artists.each do |artist| # iterates through @@artists
    # if genre exists in list up to this point, add to existing count
      if artist_count[artist] 
        artist_count[artist] += 1 
      # genre doesn't exist, create new pair & start with count "1"
      else 
        artist_count[artist]  = 1 
      end
    end
    artist_count
  end
  
end