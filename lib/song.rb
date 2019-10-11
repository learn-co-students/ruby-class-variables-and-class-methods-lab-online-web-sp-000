class Song
  attr_accessor :name, :genre, :artist

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
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
    hash_genre_count = {}
    @@genres.each {|item| hash_genre_count[item] ? hash_genre_count[item] += 1 : hash_genre_count[item] = 1}
    hash_genre_count
  end

  def self.artist_count
    hash_artist_count = {}
    @@artists.each {|item| hash_artist_count[item] ? hash_artist_count[item] += 1 : hash_artist_count[item] = 1}
    hash_artist_count
  end

  #end of class
  end
