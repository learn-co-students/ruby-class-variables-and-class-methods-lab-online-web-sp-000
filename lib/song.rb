class Song
  
  attr_accessor :name, :artists, :genre, :artist, :count
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @artist = artist
    @name = name
    @genre = genre
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  def artist
    @artist
  end
  def genre
    @genre
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def name
    @name
  end
  
  def self.artists
    @@artists.uniq
  end
  def self.genre_count
    genre_h = Hash.new
    @@genres.each do |x|
      if genre_h[x]
        genre_h[x] += 1
      else
        genre_h[x] = 1
      end
    end
    genre_h
  end
  
  def self.artist_count
    hash_a = Hash.new
    @@artists.each do |x|
      if hash_a[x]
        hash_a[x] += 1
      else
        hash_a[x] = 1
      end
    end
    hash_a
  end
 
end