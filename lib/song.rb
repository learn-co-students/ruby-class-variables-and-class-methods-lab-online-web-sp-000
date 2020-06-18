class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
      @name= name
      @artist= artist
      @genre= genre
      @@count += 1 
      @@genres << genre
      @@artists << artist
  end
  
  def self.count
    @@count  
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_hash ={}
    number = 1
    @@genres.each do |genre|
      if genre_hash.has_key?(genre)
          genre_hash[genre] = number + 1
      else genre_hash[genre] = number
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    number = 1
    @@artists.each do |artist|
      if artist_hash.has_key?(artist)
        artist_hash[artist] = number + 1 
      else artist_hash[artist] = number
      end
    end
    artist_hash
  end
end