class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    genre_hash = Hash.new
    @@genres.each do |genre|
      if genre_hash.has_key?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = Hash.new
    @@artists.each do |artist|
      if artist_hash.has_key?(artist)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end
  
end