require 'pry'

class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist
    @@count += 1
  end

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
    genre_list = Hash.new
    @@genres.each do |item|
      if genre_list.include?(item)
        genre_list[item] += 1
      else
        genre_list[item] = 1
      end
    end
    genre_list
  end

  def self.artist_count
    artist_list = Hash.new
    @@artists.each do |item|
      if artist_list.include?(item)
        artist_list[item] += 1
      else
        artist_list[item] = 1
      end
    end
    artist_list
  end
end
