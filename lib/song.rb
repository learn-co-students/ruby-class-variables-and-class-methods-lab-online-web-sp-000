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
      if genre_h.include?(x)
        if genre_h[x] == 1
          genre_h[x] = 2
        elsif genre_h[x] == 2
          genre_h[x] = 3
        elsif genre_h[x] == 3
          genre_h[x] = 4
        end
      else
        genre_h[x] = 1
      end
    end
    genre_h
  end
  
  def self.artist_count
    hash_a = Hash.new
    @@artists.each do |x|
      if hash_a.include?(x)
        if hash_a[x] == 1
          hash_a[x] = 2
        elsif hash_a[x] == 2
          hash_a[x] = 3
        elsif hash_a[x] == 3
          hash_a[x] = 4
        end
      else
        hash_a[x] = 1
      end
    end
    hash_a
  end
 
end