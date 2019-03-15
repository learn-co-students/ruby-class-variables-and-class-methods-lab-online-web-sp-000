class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = [] 
  @@artists = [] 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist #if !(@@artists.include?(artist))
    @genre = genre 
    @@genres << genre #if !(@@genres.include?(genre))
    @@count += 1 
  end 
  
  def self.genre_count
    histogram = {}
    @@genres.each do |genre|
      if !(histogram.key?(genre))
        histogram[genre] = 1 
      else
        histogram[genre]+=1 
      end 
    end 
    histogram 
  end 
 
  def self.artist_count
    histogram = {}
    @@artists.each do |artist|
      if !(histogram.key?(artist))
        histogram[artist] = 1 
      else
        histogram[artist]+=1 
      end 
    end 
    histogram 
  end  
  
  def self.count 
    @@count 
  end 
  
  def self.genres
    genres = [] 
    @@genres.each do |genre|
      if !(genres.include?(genre))
        genres << genre 
      end 
    end 
    genres 
  end 
  
  def self.artists
    artists = [] 
    @@artists.each do |artist|
      if !(artists.include?(artist))
        artists << artist 
      end 
    end 
    artists 
  end 
end 