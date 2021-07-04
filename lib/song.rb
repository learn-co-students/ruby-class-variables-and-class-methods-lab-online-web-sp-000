require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre
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
    genre_count_hash = {}

    self.genres.each do |genre|
      genre_count_hash[genre] = @@genres.select { |matching_genre| matching_genre == genre }.length
    end

    genre_count_hash
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] # first time around, evaluates to nil, so skips to else
        # second time around (if there are duplicates in @@artists), evaluate to true, so increments
        # if there isn't another duplicate, then artist_count[artist] will evaluate to nil and set up that key/value pair
        # and so on and so forth
        artist_count[artist] += 1
      else # assigns key/value pair {artist => 1 (first time around; increments by 1 for duplicates)}
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end
