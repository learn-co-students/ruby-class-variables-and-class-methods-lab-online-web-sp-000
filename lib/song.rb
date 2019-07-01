require 'pry'
class Song
 @@count = 0
 @@artists = []
 @@genres = []


 attr_reader :name, :genre, :artist

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

# def artists
#   @@artists.uniq
# end
def self.artists
  @@artists.uniq
end
# binding.pry
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
   @genres_count = Hash.new(0)
    @@genres.each do |genre|
      @genres_count[genre] += 1
    end
   @genres_count
  end

  def self.artist_count
    @artists_count = Hash.new(0)
     @@artists.each do |artist|
       @artists_count[artist] += 1
     end
    @artists_count
  end




end
