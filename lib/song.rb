require "pry"
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
    #if @@artists.include?(artist) == false
      @@artists << artist
    #end
    @@genres << genre
  end

  def self.count()
    @@count
  end

  def self.artists()
      @@artists.uniq
  end

  def self.genres()
    @@genres.uniq
  end

  def self.genre_count()
    collection = Hash.new(0)
    @@genres.each{ |name| collection[name] += 1 }
    collection
  end

  def self.artist_count()
    collection = Hash.new(0)
    @@artists.each{ |name| collection[name] += 1 }
    collection
  end
end
