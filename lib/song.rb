class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    
    @artist = artist
    @@artists << artist
    
    @genre = genre
    @@genres << genre
    
    @@count += 1
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
    
    genre_hash = {}
    
    @@genres.uniq.each do |uniq|
      @@genres.each do |count|
        if count == uniq && genre_hash[uniq] == nil
          genre_hash[uniq] = 1
          
        elsif count == uniq
          genre_hash[uniq] += 1
        end
      end
    end
    genre_hash
    
    
  end
  
  def self.artist_count
     artist_hash = {}
    
    @@artists.uniq.each do |uniq|
      @@artists.each do |count|
        if count == uniq && artist_hash[uniq] == nil
          artist_hash[uniq] = 1
          
        elsif count == uniq
          artist_hash[uniq] += 1
        end
      end
    end
    artist_hash
  end
end