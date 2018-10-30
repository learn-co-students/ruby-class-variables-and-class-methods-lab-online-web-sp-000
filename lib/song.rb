class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  @@artists_count = {}
  @@genres_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
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
    @@genres.each {|genre| @@genre_count.keys.include?(genre) ? @@genre_count[genre] += 1 : @@genre_count[genre]=1}
    @@genre_count
  end

  def self.artist_count
      @@artists.each {|artist| @@artist_count.keys.include?(artist) ? @@artist_count[artist] += 1 : @@artist_count[artist]=1}
      @@artist_count
  end

end
