require 'pry'

class Song

  @@count = 0
  def self.count
    @@count
  end

  @@artists = []
  def self.artists
    my_artists = []
    @@artists.each do |a|
      my_artists << a if !(my_artists.include?(a))
    end
    my_artists
  end

  @@genres = []
  def self.genres
    my_genres = []
    @@genres.each do |genre|
      my_genres << genre if !(my_genres.include?(genre))
    end
    my_genres
  end

  def initialize (name, artist, genre)
     @@count += 1
     @@artists << artist
     @@genres << genre
     @name=name
     @artist = artist
     @genre = genre
  end
  attr_accessor :name, :artist, :genre

def self.genre_count
  genre_count = {}
  @@genres.each do |a|
    if genre_count.include?(a)
      genre_count[a] += 1
    else
      genre_count[a] = 1
    end
  end
genre_count
end

def self.artist_count
  artist_count = {}
  @@artists.each do |a|
    if artist_count.include?(a)
      artist_count[a] += 1
    else
      artist_count[a] = 1
    end
  end
artist_count
end
end
