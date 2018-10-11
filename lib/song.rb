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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_array = {}
    @@genres.each do |genre|
      if genre_array[genre]
        genre_array[genre] += 1
      else
        genre_array[genre] = 1
      end
    end
    genre_array
  end

  def self.artist_count
    artist_array = {}
    @@artists.each do |artist|
      if artist_array[artist]
        artist_array[artist] += 1
      else
        artist_array[artist] = 1
      end
    end
    artist_array
  end
end
