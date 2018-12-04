class Song 
  attr_accessor(:name, :artist, :genre)
  
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
  def initialize(name, artist, genre) 
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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
    genre_hash = { }
    @@genres.map do |genre, song_count = 1|
      if genre_hash.has_key?(genre)
        genre_hash[genre] = song_count += 1
      else genre_hash[genre] = song_count
      end 
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = { }
    @@artists.map do |artist, song_count = 1|
      if artist_hash.has_key?(artist)
        artist_hash[artist] = song_count += 1
      else artist_hash[artist] = song_count
      end 
    end
    artist_hash
  end
      
end