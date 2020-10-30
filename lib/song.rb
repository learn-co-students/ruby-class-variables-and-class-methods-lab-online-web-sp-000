require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
  #  if @@artists.include?(artist) != true#artists doesn't already inclue artist
      @@artists << artist
  #  end
    @genre = genre
    @@genres << genre
  end
  def self.count
    @@count
  end
  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if unique_artists.include?(artist) != true
          unique_artists << artist
      end
    end
    unique_artists
  end
  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      if unique_genres.include?(genre) != true
        unique_genres << genre
      end
    end
    unique_genres
  end

  def self.genre_count
    genre_hash = {}
    #go through every item in @@genres array
    @@genres.each do |genre|
    #if the genre key already exists value += 1
      if genre_hash.include?(genre)
        #binding.pry
        genre_hash[genre] = genre_hash[genre] + 1
      else
    #if it is the first song of that genre, create a genre key, then add value 1
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.include?(artist)
        artist_hash[artist] = artist_hash[artist] + 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end

end
