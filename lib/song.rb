require 'pry'

class Song

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

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
#    binding.pry
      if hash[genre]
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
  #    binding.pry
      if hash[artist]
        hash[artist] += 1
      else
        hash[artist] = 1
      end
    end
    hash
  end
end
