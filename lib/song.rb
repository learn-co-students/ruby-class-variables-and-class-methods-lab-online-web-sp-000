class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@unique_artists = []
  @@genres = []
  @@unique_genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@unique_artists << artist unless @@unique_artists.include?(artist)
    @@genres << genre
    @@unique_genres << genre unless @@unique_genres.include?(genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @@unique_artists
  end

  def self.genres
    @@unique_genres
  end

  def self.genre_count
    genre_counts = Hash.new 0
    @@genres.each do |genre|
      genre_counts[genre] += 1
    end
    genre_counts
  end

  def self.artist_count
    artist_counts = Hash.new 0
    @@artists.each do |artist|
      artist_counts[artist] += 1
    end
    artist_counts 
  end

end
