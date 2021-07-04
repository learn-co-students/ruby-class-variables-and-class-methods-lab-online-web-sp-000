class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end
  def self.count
    return @@count
  end
  def self.artists
    return @@artists.uniq
  end
  def self.genres
    return @@genres.uniq
  end
  def self.genre_count
    array = {}
    u_genres = @@genres.uniq
    u_genres.each do |genre|
      array[genre] = @@genres.count(genre)
    end
    return array
  end
  def self.artist_count
    array = {}
    u_artists = @@artists.uniq
    u_artists.each do |artist|
      array[artist] = @@artists.count(artist)
    end
    return array
  end
end
