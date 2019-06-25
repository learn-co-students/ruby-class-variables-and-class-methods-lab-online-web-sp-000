class Song

  attr_accessor :name, :artist, :genre
  @@count = 0                           #Class Variable counter initialization

  def intialize(name, artist, genre)
    @@count += 1
    genres
  end

  def self.count        #class method
    return @@count
  end

  def self.genres
    @@genres = []

  end

  def self.artists
    @@artists[artist]
  end
  def artist_count

  end

  def genre_count

  end
