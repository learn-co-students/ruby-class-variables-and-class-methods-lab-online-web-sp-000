class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @genre = genre
    @@genres << genre
    @artist = artist
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    Hash[@@genres.uniq.collect {|g| [g, @@genres.count(g)]}]
  end

  def self.artists
    @@artists.uniq
  end
  def self.artist_count
    Hash[@@artists.uniq.collect {|a| [a, @@artists.count(a)]}]
  end
end
