require 'pry'
class Song
  @@count = 0
  @@genres ||= []
  @@artists ||= []

  def initialize(name,artist,genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end

attr_accessor :name, :artist, :genre

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
      result = @@genres.each_with_object(Hash.new(0)) { |each_genre,counter| counter[each_genre] += 1 }
      result
  end

  def self.artist_count
    result = @@artists.each_with_object(Hash.new(0)) { |each_artist,counter| counter[each_artist] += 1 }
    result
  end

end
