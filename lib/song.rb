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
    @@artists << @artist
    @@genres << @genre
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
    genre_count_hash = {}

    self.genres.each do |genre|
      genre_count_hash[genre] = @@genres.select { |matching_genre| matching_genre == genre }.length
    end

    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}

    self.artists.each do |artist|
      artist_count_hash[artist] = @@artists.select { |matching_artist| matching_artist == artist }.length
    end

    artist_count_hash
  end

end
