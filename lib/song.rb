# frozen_string_literal: true

require 'pry'

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
    unique_artist_array = []
    @@artists.map do |artist|
      unique_artist_array << artist unless unique_artist_array.include?(artist)
    end
    unique_artist_array
  end

  def self.genres
    unique_genre_array = []
    @@genres.map do |genre|
      unique_genre_array << genre unless unique_genre_array.include?(genre)
    end
    unique_genre_array
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.collect do |genre|
      genre_count_hash[genre] = @@genres.count(genre)
    end
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.collect do |artist|
      artist_count_hash[artist] = @@artists.count(artist)
    end
    artist_count_hash
  end
end
