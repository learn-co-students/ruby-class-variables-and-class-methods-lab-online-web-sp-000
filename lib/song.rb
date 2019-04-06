class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
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
  
  def self.genres
    genres_no_dup = []
    @@genres.each do |genre|
      genres_no_dup << genre if !genres_no_dup.include?(genre)
    end
    genres_no_dup
  end
  
  def self.artists
    artists_no_dup = []
    @@artists.each do |artist|
      artists_no_dup << artist if !artists_no_dup.include?(artist)
    end
    artists_no_dup
  end
  
  def self.genre_count
    array_of_genres = self.genres
    genre_hash = {}
    array_of_genres.each do |genre|
      genre_hash[genre] = 0
    end
    @@genres.each do |genre|
      genre_hash[genre] += 1
    end
    genre_hash
  end
  
  def self.artist_count
    array_of_artists = self.artists
    artist_hash = {}
    array_of_artists.each do |artist|
      artist_hash[artist] = 0
    end
    @@artists.each do |artist|
      artist_hash[artist] += 1
    end
    artist_hash
  end
end