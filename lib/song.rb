class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@g_count_hash = {}
  @@a_count_hash = {}


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

  def self.genres
    @@genres.uniq!
    @@genres
  end

  def self.artists
    @@artists.uniq!
    @@artists
  end

  def self.genre_count
    @@genres.group_by(&:itself).each {|key, value| @@g_count_hash[key] = value.count}
    @@g_count_hash
  end

  def self.artist_count
    @@artists.group_by(&:itself).each {|key, value| @@a_count_hash[key] = value.count}
    @@a_count_hash
  end

end
