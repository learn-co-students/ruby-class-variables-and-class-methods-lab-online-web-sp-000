class Song 
  
  attr_accessor :artist, :genre, :name
  
  @@count = 0 
  @@artists=[]
  @@genres=[]
  @@genre_count={}
  @@artist_count={}
  
  def self.count
    @@count
  end 
  
 def self.artists
    @@artists & @@artists
  end

  def self.genres
    @@genres & @@genres
  end

   def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    @@genre_count[genre] ||= 0
    @@genre_count[genre] += 1
    @@artist_count[artist] ||= 0
    @@artist_count[artist] += 1
  end
end