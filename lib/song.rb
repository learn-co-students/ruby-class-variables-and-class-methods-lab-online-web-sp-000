require 'pry'
class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end
  
  def self.count
    @@count
  end
  
  def self.name
    @name
  end
  
  def self.genre
    @genre
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    
    @@genres.each do |a_genre|
      if !genre_hash.keys.include?(a_genre)
        genre_hash[a_genre] = 1
      else
        genre_hash[a_genre] = genre_hash[a_genre] + 1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artists_hash = {}
    @@artists.each do |an_artist|
      if !artists_hash.keys.include?(an_artist)
        artists_hash[an_artist] = 1
      else
        artists_hash[an_artist] = artists_hash[an_artist] + 1
      end
    end
    artists_hash
  end
  
end

