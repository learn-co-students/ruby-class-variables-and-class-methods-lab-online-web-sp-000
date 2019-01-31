class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each {|genre| hash.include?(genre) ? hash[genre] += 1 : hash[genre] = 1}
    hash
  end

  def self.artist_count
    hash ={}
    @@artists.each {|artist| hash.include?(artist) ? hash[artist] += 1 : hash[artist] = 1}
    hash
  end
end
