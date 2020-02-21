class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each {|artist| unique_artists << artist unless unique_artists.include?(artist)}
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each {|genre| unique_genres << genre unless unique_genres.include?(genre)}
    unique_genres
  end

  def self.genre_count
    genres_hash = Hash.new(0)
    @@genres.each {|genre| genres_hash[genre] += 1}
    genres_hash
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    @@artists.each {|artist| artists_hash[artist] +=1}
    artists_hash
  end
end
