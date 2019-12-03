require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist  = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist unless unique_artists.include?(artist)
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end

  def self.genre_count
    genres_count = {}
    genres.each do |unique_genre|
      genres_count[unique_genre] = @@genres.count(unique_genre)
    end
    genres_count
  end

  def self.artist_count
    artist_count = {}
    artists.each do |unique_artist|
      artist_count[unique_artist] = @@artists.count(unique_artist)
    end
    artist_count
  end

end

Song.new("Blackened", "Metallica", "Metal")
Song.new("Smells Like Teen Spirit", "Nirvana", "Garage Rock")
Song.new("No Quarter", "Led Zeppelin", "Classic Rock")

Song.genre_count
