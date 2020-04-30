require 'pry'
class Song
  attr_accessor :name, :artist, :genre
#binding.pry
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

  def self.count #returns total number of songs created
    @@count
  end

  def self.genres #returns an array of all unique genres of existing songs
    @@genres.uniq!
  end

  def self.artists #returns array of all unique artists
    @@artists.uniq!
  end

  def self.genre_count #returns a hash in which keys are names of each genre and values are numbers of songs per genre
#iterate over genres array
    @@genre_count = {}
    @@genres.group_by(&:itself).each do |k,v|
#binding.pry
    @@genre_count[k] = v.count
  end
    return @@genre_count
 #binding.pry
  end

  def self.artist_count #returns a hash in which keys are artists and values are number of times artist appears
#iterate over artists array
    @@artist_count = {}
    @@artists.group_by(&:itself).each {|k,v| @@artist_count[k] = v.count}
    return @@artist_count
  end
end
