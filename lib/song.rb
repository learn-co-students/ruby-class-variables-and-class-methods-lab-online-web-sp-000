require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
  @@count += 1
  @@artists << artist
  @@genres << genre
  @name = name
  @artist = artist
  @genre = genre
  end

  def self.count
   @@count
  end

  def self.genres
   @@genres.uniq!
  end

  def self.artists
   @@artists.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |key|
      if genre_count.has_key?(key)
          genre_count[key] += 1
      else genre_count[key] = 1
      end
    end
  genre_count
end

def self.artist_count
  artist_count = {}
  @@artists.each do |key|
    if artist_count.has_key?(key)
      artist_count[key] += 1
    else artist_count[key] = 1
    end
  end
artist_count
end
end
