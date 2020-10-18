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
    hash = {}
    self.genres.each do |genre|
      hash[genre] = @@genres.count(genre)
    end
    hash
  end
  
  def self.artist_count
    hash = {}
    self.artists.each do |artist|
      hash[artist] = @@artists.count(artist)
    end
    hash
  end
end

#   @@count = 0
#   @@genres = []
#   @@artists = []
#   @@genre_histogram = {}
#   @@artist_histogram = {}
  
#   attr_accessor :name, :artist, :genre
  
#   def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@count += 1
#     @@artists << artist
#     @@genres << genre
#   end
  
#   def self.count
#     @@count
#   end
  
#   def self.genres
#     @@genres.uniq
#   end
    
#   def self.artists
#     @@artists.uniq
#   end
  
#   def self.genre_count
#     Hash[self.genres.map{|genre| [genre, @@genres.count(genre)]}]
#   end
  
#   def self.artist_count
#     self.artists.each do |artist|
#       @@artist_histogram[artist] = @@artists.count(artist)
#     end
#     @@artist_histogram
#   end
# end