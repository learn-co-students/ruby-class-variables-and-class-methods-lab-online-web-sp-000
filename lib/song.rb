class Song 
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @@artists << artist 
    @genre = genre 
    @@genres << genre 
    @@count += 1 
  end 
  
  @@count = 0 
  
  def self.count 
    @@count
  end 
  
  @@genres = [] 
  
  def self.genres
    uniqueG = [] 
    @@genres.each do |type|
      if !uniqueG.include?(type)
        uniqueG << type  
      end 
    end 
    uniqueG 
  end 
  
  @@artists = [] 
  
  def self.artists 
    uniqueA = [] 
    @@artists.each do |singer|
      if !uniqueA.include?(singer)
        uniqueA << singer 
      end 
    end 
    uniqueA 
  end
  def self.genre_count
    histo = {} 
      @@genres.each do |genre| 
      histo[genre]||= 0
      histo[genre] += 1 
    end 
    histo 
  end 
  def self.artist_count
    aHisto = {} 
    @@artists.each do |singer|
      aHisto[singer] ||= 0 
      aHisto[singer] += 1 
    end 
    aHisto 
  end 
end 