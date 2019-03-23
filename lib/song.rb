require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count ={}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
    @@genre_count
    #populate_genre_count(genre)
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
    @@genre_count
    #binding.pry
  end

  def populate_genre_count (genre)
    if !(@@genre_count.key.include?(genre))
      @@genre_count[genre] = 1
    else
      @@genre_count[genre] +=1
    end
  end




end # end of Class
