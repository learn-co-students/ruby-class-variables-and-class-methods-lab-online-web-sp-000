# Song class needs to:
# - produce individual songs
# - each song has a:
#   1) name
#   2) artist (Song.artists)
#   3) genre (Song.genres)
#   4) keep track on number of songs (Song.count)
#   5) keep track on number of songs of each genre (Song.genre_count)
#   6) keep track of number of songs of each artist (Song.artist_count)

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
  if genre_count[genre]
    genre_count[genre] += 1
  else
    genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
  if artist_count[artist]
     artist_count[artist] += 1
  else
    artist_count[artist] = 1
    end
  end
  artist_count
end



end
