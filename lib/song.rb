require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre


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
    genres = []
    @@genres.each do |genre|
      genres << genre unless genres.include?(genre)
    end
    genres
  end

  def self.artists
    artists = []
    @@artists.each do |artist|
      artists << artist unless artists.include?(artist)
    end
    artists
  end

  def self.genre_count
    genre_count = {}

    @@genres.each do |genre|
      genre_count[genre] = 0 unless genre_count.has_key?(genre)
      genre_count[genre] += 1
    end

    genre_count
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |a|
      artist_hash[a] += 1
    end

    artist_hash
  end

end
