require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    @@genres.each do |genre| 
      binding.pry
      @@genres[genre] = count.to_i
    end
    #returns hash of keys as names of genres, values as songs
  end
  
  def artist_count
  end
  
end
  