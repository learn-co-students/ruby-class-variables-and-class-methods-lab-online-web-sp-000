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
    genre_total = {}
    Song.genres.each do |genre|
      genre_total[genre] = @@genres.count(genre)
    end
    genre_total
  end
  
  def self.artist_count
    artist_total = {}
    Song.artists.each do |artist|
      artist_total[artist] = @@artists.count(artist)
    end
    artist_total
  end
end
